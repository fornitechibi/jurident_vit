/**
 * Import function triggers from their respective submodules:
 *
 * const {onCall} = require("firebase-functions/v2/https");
 * const {onDocumentWritten} = require("firebase-functions/v2/firestore");
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */
const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.sendExpiredEventNotifications = functions.pubsub
    .schedule("every 24 hours").timeZone("Asia/Kolkata")
    .onRun((context) => {
      const now = Date.now();
      const eventsRef = admin.firestore().collection("notifications");
      return eventsRef.where("time", "<=", now).get().then((snapshot) => {
        snapshot.forEach((doc) => {
          const event = doc.data();
          const {userId} = event;

          const userRef = admin.firestore().collection("users").doc(userId);
          userRef.get().then((userSnapshot) => {
            const userData = userSnapshot.data();
            const fcmToken = userData.fcmToken;

            const notification = {
              notification: {
              // title: 'Event Reminder',
                body: "Your event has expired.",
              },
              token: fcmToken,
            };

            admin.messaging().send(notification)
                .then(() => {
                  console.log("Notification sent successfully.");
                })
                .catch((error) => {
                  console.error("Error sending notification:", error);
                });
          });
        });
        return null;
      })
          .catch((error) => {
            console.error("Error retrieving expired events:", error);
            throw new functions.https
                .HttpsError("internal", "Failed to send notifications");
          });
    });
