import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'package:jurident/core/authentication/firestore_functions.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:juridentt/models/user.dart';
import 'package:twitter_login/twitter_login.dart';

class Auth {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  User? get currentUser => auth.currentUser;

  // User Registration
  Future<String> registerUser({
    required String profile,
    required String name,
    required String location,
    required String lawyerId,
    required String clientId,
    required String mobileNumber,
    required String email,
    required String address,
    required String type,
    required String password,
  }) async {
    String resp = 'Some Error Occurred';
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      Info userData = Info(
        profile: profile,
        name: name,
        location: location,
        lawyerId: lawyerId,
        clientId: clientId,
        mobileNumber: mobileNumber,
        email: email,
        address: address,
        type: type,
      );

      await firestore
          .collection('lawyers')
          .doc(userCredential.user!.uid)
          .set(userData.toJson());
      resp = 'success';
    } catch (e) {
      if (e is FirebaseAuthException) {
        if (e.code == 'weak-password') {
          resp =
              'The provided password is too weak. Please choose a stronger password.';
        } else if (e.code == 'email-already-in-use') {
          resp =
              'The account already exists for that email. Please try creating a new account.';
        } else {
          resp = e.message ?? 'Some Error Occurred';
        }
      } else {
        resp = e.toString();
      }
    }
    return resp;
  }

  // User Login
  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = 'Some Error Occurred';
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await auth.signInWithEmailAndPassword(email: email, password: password);
        res = 'success';
      } else {
        res = 'Please enter email and password';
      }
    } catch (e) {
      if (e is FirebaseAuthException) {
        if (e.code == 'wrong-password') {
          res = 'Incorrect password. Please try again.';
        } else if (e.code == 'user-not-found') {
          res = 'User not found. Please create a new account.';
        } else {
          res = e.message ?? 'Some Error Occurred';
        }
      } else {
        res = e.toString();
      }
    }
    return res;
  }

  // User Logout
  Future signOut() async {
    try {
      return await auth.signOut();
      // You can navigate to a different screen or perform any other actions here
    } catch (err) {
      SnackBar(content: Text(err.toString()));
      return null;
    }
  }

  // Get User Data
  Future<Info> getUserData() async {
    User currentUser = auth.currentUser!;
    DocumentSnapshot snap =
        await firestore.collection('lawyers').doc(currentUser.uid).get();
    return Info.fromDocumentSnapshot(snap);
  }

  // Check Login Status
  Future<bool> checkLoginStatus() async {
    return auth.currentUser != null;
  }

  // User Stream
  Stream<User?> currentUserStream() {
    return auth.authStateChanges();
  }

  // SignIn/Up with google with all domains
  signInWithGoogle(context) async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser != null) {
        // Obtain the auth details from the request
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        // Create a new credential
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        // Sign in with the credential
        final UserCredential userCredentials =
            await FirebaseAuth.instance.signInWithCredential(credential);

        // Get the user details
        final User? user = userCredentials.user;

        if (user != null) {
          // Check if the user exists in Firestore
          final userDoc =
              FirebaseFirestore.instance.collection('users').doc(user.uid);

          final userDocSnapshot = await userDoc.get();

          if (userDocSnapshot.exists) {
            await userDoc.update({
              'username': user.displayName,
              // 'email': user.email,
            });

            // Push to the home page
            Navigator.pushNamed(context, '/homescreen');
          } else {
            Info userData = Info(
              profile: '',
              name: user.displayName.toString(),
              location: '',
              lawyerId: '',
              clientId: '',
              mobileNumber: '',
              email: user.email.toString(),
              address: '',
              type: '',
            );

            await firestore
                .collection('lawyers')
                .doc(userCredentials.user!.uid)
                .set(userData.toJson());

            // Push to the home page
            Navigator.pushNamed(context, '/homescreen');
          }
        } else {
          AlertDialog(
            title: const Text('Error'),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                    'Error signing in with Google.',
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        }
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        AlertDialog(
          title: const Text('Error'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  'An account with a different sign-in method already exists for the same email address.',
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      } else if (e.code == 'invalid-credential') {
        AlertDialog(
          title: const Text('Error'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  'The supplied auth credential is malformed or has expired.',
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      } else {
        AlertDialog(
          title: const Text('Error'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('An error occurred while signing in with Google.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    } catch (e) {
      AlertDialog(
        title: const Text('Error'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('An error occurred while signing in with Google.'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    }
  }

  // SignIn/Up with Facebook with all domains
  signInWithFacebook(context) async {
    try {
      // Trigger the sign-in flow
      final LoginResult result = await FacebookAuth.instance.login();

      // Create a credential from the access token
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(result.accessToken!.token);

      // Once signed in, return the UserCredential
      UserCredential usercredentials = await FirebaseAuth.instance
          .signInWithCredential(facebookAuthCredential);

      // Get the user details
      User? user = usercredentials.user;

      if (user != null) {
        // Check if the user exists in Firestore
        final userDoc =
            FirebaseFirestore.instance.collection('users').doc(user.uid);

        final userDocSnapshot = await userDoc.get();

        if (userDocSnapshot.exists) {
          await userDoc.update({
            'username': user.displayName,
            // 'email': user.email,
          });

          // Push to the home page
          Navigator.pushNamed(context, '/homescreen');
        } else {
          Info userData = Info(
            profile: '',
            name: user.displayName.toString(),
            location: '',
            lawyerId: '',
            clientId: '',
            mobileNumber: '',
            email: user.email.toString(),
            address: '',
            type: '',
          );

          await firestore
              .collection('lawyers')
              .doc(usercredentials.user!.uid)
              .set(userData.toJson());

          // Push to the home page
          Navigator.pushNamed(context, '/homescreen');
        }
      } else {
        AlertDialog(
          title: const Text('Error'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  'Error signing in with Facebook.',
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        AlertDialog(
          title: const Text('Error'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  'An account with a different sign-in method already exists for the same email address.',
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      } else if (e.code == 'invalid-credential') {
        AlertDialog(
          title: const Text('Error'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  'The supplied auth credential is malformed or has expired.',
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      } else {
        AlertDialog(
          title: const Text('Error'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('An error occurred while signing in with Facebook.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    } catch (e) {
      AlertDialog(
        title: const Text('Error'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('An error occurred while signing in with Facebook.'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    }
  }

  // SignIn/Up with Facebook with all domains
  signInWithTwitter(context) async {
    try {
      // Create a TwitterLogin instance
      final twitterLogin = TwitterLogin(
        apiKey: 'b0lpIeElpGI9V1Mtaiv4iNHEs',
        apiSecretKey: 'LPWlbWCccYVmgrdUiHcJ475TCTCM7seinPAF1JnxHwPnsCxds1',
        redirectURI: 'https://jurident-9a928.firebaseapp.com/__/auth/handler',
      );

      // Trigger the sign-in flow
      final authResult = await twitterLogin.login();

      // Create a credential from the access token
      final twitterAuthCredential = TwitterAuthProvider.credential(
        accessToken: authResult.authToken!,
        secret: authResult.authTokenSecret!,
      );

      // Once signed in, return the UserCredential
      UserCredential usercredentials = await FirebaseAuth.instance
          .signInWithCredential(twitterAuthCredential);

      // Get the user details
      User? user = usercredentials.user;

      if (user != null) {
        // Check if the user exists in Firestore
        final userDoc =
            FirebaseFirestore.instance.collection('users').doc(user.uid);

        final userDocSnapshot = await userDoc.get();

        if (userDocSnapshot.exists) {
          await userDoc.update({
            'username': user.displayName,
            // 'email': user.email,
          });

          // Push to the home page
          Navigator.pushNamed(context, '/homescreen');
        } else {
          Info userData = Info(
            profile: '',
            name: user.displayName.toString(),
            location: '',
            lawyerId: '',
            clientId: '',
            mobileNumber: '',
            email: user.email.toString(),
            address: '',
            type: '',
          );

          await firestore
              .collection('lawyers')
              .doc(usercredentials.user!.uid)
              .set(userData.toJson());

          // Push to the home page
          Navigator.pushNamed(context, '/homescreen');
        }
      } else {
        AlertDialog(
          title: const Text('Error'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  'Error signing in with Facebook.',
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        AlertDialog(
          title: const Text('Error'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  'An account with a different sign-in method already exists for the same email address.',
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      } else if (e.code == 'invalid-credential') {
        AlertDialog(
          title: const Text('Error'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  'The supplied auth credential is malformed or has expired.',
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      } else {
        AlertDialog(
          title: const Text('Error'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('An error occurred while signing in with Facebook.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    } catch (e) {
      AlertDialog(
        title: const Text('Error'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('An error occurred while signing in with Facebook.'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    }
  }

  // Reset Password with email link.
  Future<void> sendPasswordResetEmail({
    required String email,
  }) async {
    await auth.sendPasswordResetEmail(email: email);
  }
}
