// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:juridentt/constants.dart';
import 'package:juridentt/resources/auth.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:email_otp/email_otp.dart';
import 'dart:async';

class LoginOtp extends StatefulWidget {
  const LoginOtp({
    Key? key,
    required this.useremail,
    required this.userpassword,
  }) : super(key: key);

  final String useremail;
  final String userpassword;

  @override
  State<LoginOtp> createState() => _LoginOtpState();
}

class _LoginOtpState extends State<LoginOtp> {
  late EmailOTP _emailOtp;
  late String _otp;
  int _remainingTime = 93; // 1.33 minutes in seconds
  Timer? _resendTimer;

  @override
  void initState() {
    super.initState();
    _emailOtp = EmailOTP();
    startResendTimer();
    _setConfig();
  }

  @override
  void dispose() {
    _resendTimer?.cancel();
    super.dispose();
  }

  void startResendTimer() {
    const oneSec = Duration(seconds: 1);
    _resendTimer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_remainingTime == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _remainingTime--;
          });
        }
      },
    );
  }

  String formatTimer(int seconds) {
    final minutes = (seconds / 60).floor().toString().padLeft(2, '0');
    final remainingSeconds = (seconds % 60).toString().padLeft(2, '0');
    return '$minutes:$remainingSeconds';
  }

  void _setConfig() {
    _emailOtp.setConfig(
      appEmail: 'kiruthick012002@gmail.com',
      appName: 'Jurident',
      userEmail: widget.useremail,
      otpLength: 5,
      otpType: "mixed",
    );
    _sendOtp();
  }

  void _sendOtp() async {
    bool success = await _emailOtp.sendOTP();
    if (success) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('OTP Sent'),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error Sending OTP'),
        ),
      );
    }
  }

  void _verifyOtp() async {
    try {
      bool success = await _emailOtp.verifyOTP(otp: _otp);
      if (success) {
        // signInWithEmailAndPassword();
        loginUser();
      } else {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(
                'OTP Verification Failed',
                textAlign: TextAlign.center,
                style: Constants.satoshiLightBlackNormal22,
              ),
            );
          },
        );
      }
    } catch (error) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Error',
                textAlign: TextAlign.center,
                style: Constants.satoshiLightBlackNormal22),
            content: Text(
              'An error occurred: $error',
              textAlign: TextAlign.center,
            ),
          );
        },
      );
    }
  }

  void loginUser() async {
    String res = await Auth().loginUser(
      email: widget.useremail,
      password: widget.userpassword,
    );

    if (res == 'success') {
      Navigator.pushNamed(context, '/homescreen');
    }
    if (res == 'Incorrect password. Please try again.') {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Incorrect password. Please try again.',
                textAlign: TextAlign.center,
                style: Constants.satoshiLightBlackNormal22),
            actions: <Widget>[
              TextButton(
                child: Text(
                  'OK',
                  style: Constants.lightBlackBold,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ],
          );
        },
      );
    }
    if (res == 'User not found. Please create a new account.') {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('User not found. Please create a new account.',
                textAlign: TextAlign.center,
                style: Constants.satoshiLightBlackNormal22),
            actions: <Widget>[
              TextButton(
                child: Text('OK', style: Constants.lightBlackBold),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ],
          );
        },
      );
    }
    if (res == 'Some Error Occurred') {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Some Error Occurred.',
                textAlign: TextAlign.center,
                style: Constants.satoshiLightBlackNormal22),
            actions: <Widget>[
              TextButton(
                child: Text('OK', style: Constants.lightBlackBold),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color.fromRGBO(201, 159, 74, 0.54),
        backgroundColor: Constants.orange,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            const Image(
              image: AssetImage(
                'assets/images/ellipse.png',
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 35, right: 35, top: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to Jurident",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: Constants.satoshiYellowNormal22,
                    ),
                    Container(
                      width: 358,
                      margin: const EdgeInsets.only(top: 17),
                      child: Text(
                        "Are you ready to become a legal eagle? Login to the app and spread your wings in the courtroom.",
                        maxLines: null,
                        textAlign: TextAlign.justify,
                        style: Constants.satoshiBlackNormal18,
                      ),
                    ),
                    Container(
                      height: 464,
                      width: 440,
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.only(
                          left: 29, right: 20, bottom: 31),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Constants.white,
                        border: Border.all(
                          color: Constants.black33,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Constants.black4c,
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 190),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Log In",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: Constants
                                            .satoshiTransparentNormal22Underline,
                                      ),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/signup');
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 28, bottom: 2),
                                    child: Text(
                                      "Sign Up",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          Constants.satoshiLightBlackNormal22,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            transform: Matrix4.translationValues(65, -140, 0),
                            child: Text('OTP Verification',
                                textAlign: TextAlign.center,
                                style: Constants.satoshiLightBlackNormal22),
                          ),
                          Container(
                            transform: Matrix4.translationValues(60, -120, 0),
                            child: Text(
                              'Enter the OTP sent to',
                              textAlign: TextAlign.center,
                              style: Constants.satoshiLightBlackNormal18,
                            ),
                          ),
                          Container(
                            transform: Matrix4.translationValues(35, -114, 0),
                            child: Text(
                              widget.useremail,
                              textAlign: TextAlign.center,
                              style: Constants.satoshiLightBlackNormal18,
                            ),
                          ),
                          Container(
                            height: 49,
                            transform: Matrix4.translationValues(0, -100, 0),
                            child: OtpTextField(
                              numberOfFields: 5,
                              showFieldAsBox: true,
                              fieldWidth: 49,
                              borderRadius: BorderRadius.circular(7),
                              borderWidth: 1,
                              fillColor: Constants.white,
                              cursorColor: Constants.black,
                              enabledBorderColor: Constants.black,
                              onSubmit: (String verificationCode) {
                                _otp = verificationCode;
                              },
                            ),
                          ),
                          Container(
                            transform:
                                Matrix4.translationValues(0.0, -60.0, 0.0),
                            child: Container(
                              margin: const EdgeInsets.only(left: 140),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap:
                                        _remainingTime == 0 ? _sendOtp : null,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        "Resend OTP",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            Constants.satoshiYellowUnderline14,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 6, bottom: 5),
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                        "in ${formatTimer(_remainingTime)}",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            Constants.satoshiLightBlackNormal14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              _verifyOtp();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Constants.lightblack,
                              minimumSize: const Size(320, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text(
                              "Log in",
                              style: Constants.satoshiWhite18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, bottom: 6),
                          child: SizedBox(
                            width: 149,
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              color: Constants.black,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 7),
                          child: Text(
                            "or",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14, bottom: 6),
                          child: SizedBox(
                            width: 149,
                            child: Divider(
                              height: 1,
                              thickness: 1,
                              color: Constants.black,
                              indent: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 145),
                      child: Text(
                        "Log In with",
                        style: Constants.satoshiGrey90016,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Handle Google button tap
                            },
                            child: Image.asset(
                              'assets/images/facebook_logo.png',
                              width: 45,
                              height: 45,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 50),
                            child: GestureDetector(
                              onTap: () {
                                // Auth().signWithGoogle(context);
                              },
                              child: Image.asset(
                                'assets/images/google_logo.png',
                                width: 48,
                                height: 48,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                left: 50, top: 4, bottom: 4),
                            child: GestureDetector(
                              onTap: () {
                                // Auth().signInWithTwitter(context);
                              },
                              child: Image.asset(
                                'assets/images/twitter_logo.png',
                                width: 36,
                                height: 45,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
