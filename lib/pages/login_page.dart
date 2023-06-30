import 'package:flutter/material.dart';
//import 'package:juridentt/pages/otp_login_page.dart';
import 'package:juridentt/pages/register_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool keepLoggedIn = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/glitter_orange_background.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 540,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                const Image(
                                  image:
                                      AssetImage('assets/images/ellipse.png'),
                                  height: 315,
                                  width: 428,
                                  alignment: Alignment.center,
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 35, top: 62, right: 35),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Welcome to Jurident",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Color(0XFFc99f4a),
                                            fontSize: 22,
                                            fontFamily: 'Satoshi',
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                        Container(
                                          width: 358,
                                          margin:
                                              const EdgeInsets.only(top: 17),
                                          child: const Text(
                                            "Are you ready to become a legal eagle? Login to the app and spread your wings in the courtroom.",
                                            maxLines: null,
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontFamily: 'Satoshi',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(
                              0, 110), // Adjust the vertical offset as needed
                          child: Container(
                            height: 464,
                            width: 368,
                            margin: const EdgeInsets.only(left: 30, right: 30),
                            padding: const EdgeInsets.only(
                                left: 29, right: 29, bottom: 31),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0XFFFAFAFA),
                              border: Border.all(
                                color: const Color(0x33050125),
                                width: 1,
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x4c000000),
                                  spreadRadius: 2,
                                  blurRadius: 2,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 160),
                                  child: Row(
                                    children: [
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Log In",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Color(0XFFc99f4a),
                                                fontSize: 22,
                                                fontFamily: 'Satoshi',
                                                fontWeight: FontWeight.w500,
                                                fontStyle: FontStyle.normal,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 60,
                                            child: Divider(
                                              height: 2,
                                              thickness: 2,
                                              color: Color(0XFFc99f4a),
                                            ),
                                          ),
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const RegisterScreen()));
                                        },
                                        child: const Padding(
                                          padding: EdgeInsets.only(
                                              left: 28, bottom: 2),
                                          child: Text(
                                            "Sign Up",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0XFF050125),
                                              fontSize: 22,
                                              fontFamily: 'Satoshi',
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  transform: Matrix4.translationValues(
                                      0.0, -100.0, 0.0),
                                  child: TextFormField(
                                    focusNode: FocusNode(),
                                    controller: emailController,
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      contentPadding: const EdgeInsets.only(
                                        left: 10,
                                        top: 16,
                                        right: 7,
                                        bottom: 16,
                                      ),
                                      prefixIcon: Container(
                                        margin: const EdgeInsets.only(
                                          left: 10,
                                          top: 16,
                                          right: 7,
                                          bottom: 16,
                                        ),
                                        child: Image.asset(
                                          'assets/images/mailsymbol.png',
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: const BorderSide(
                                          color: Colors.black,
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: const BorderSide(
                                          color: Colors.black,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  transform: Matrix4.translationValues(
                                      0.0, -100.0, 0.0),
                                  child: TextFormField(
                                    focusNode: FocusNode(),
                                    // autofocus: true,
                                    controller: passwordController,
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      contentPadding: const EdgeInsets.only(
                                        left: 10,
                                        top: 16,
                                        right: 7,
                                        bottom: 16,
                                      ),
                                      prefixIcon: Container(
                                        margin: const EdgeInsets.only(
                                          left: 10,
                                          top: 16,
                                          right: 7,
                                          bottom: 16,
                                        ),
                                        child: Image.asset(
                                          'assets/images/passwordlock.png',
                                          height: 20,
                                          width: 20,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: const BorderSide(
                                          color: Colors.black,
                                          width: 1,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: const BorderSide(
                                          color: Colors.black,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                    textInputAction: TextInputAction.done,
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: true,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                Container(
                                  transform: Matrix4.translationValues(
                                      0.0, -60.0, 0.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 21,
                                        width: 21,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Checkbox(
                                          value: keepLoggedIn,
                                          onChanged: (value) {
                                            setState(() {
                                              keepLoggedIn = value!;
                                            });
                                          },
                                          activeColor: Colors.blue,
                                          checkColor: Colors.white,
                                        ),
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(left: 5, top: 4),
                                        child: Text(
                                          "Keep me Logged In",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Color(0XFFc99f4a),
                                            fontSize: 14,
                                            fontFamily: 'Satoshi',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        width: 124,
                                        margin: const EdgeInsets.only(
                                            left: 18, top: 2),
                                        child: const Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: SizedBox(
                                                width: 124,
                                                child: Divider(
                                                  height: 2,
                                                  thickness: 2,
                                                  color: Color(
                                                    0XFFc99f4a,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Text(
                                                "Forgot Password?",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Color(
                                                    0XFFc99f4a,
                                                  ),
                                                  fontSize: 14,
                                                  fontFamily: 'Satoshi',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0XFF050125),
                                    minimumSize: const Size(
                                      308,
                                      47,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const RegisterScreen()));
                                  },
                                  child: const Text(
                                    "Send OTP",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 22,
                    width: 348,
                    margin: const EdgeInsets.only(top: 130),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Or",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 16,
                              fontFamily: 'Satoshi',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 9),
                          child: const Image(
                            image: AssetImage('assets/images/divider.png'),
                            height: 1,
                            width: 348,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      "Log In with",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey[900],
                        fontSize: 16,
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Image(
                          image: AssetImage('assets/images/facebook_logo.png'),
                          height: 45,
                          width: 45,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 50),
                          child: const Image(
                            image: AssetImage('assets/images/google_logo.png'),
                            height: 45,
                            width: 43,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 50, top: 4, bottom: 4),
                          child: const Image(
                            image: AssetImage('assets/images/twitter_logo.png'),
                            height: 36,
                            width: 45,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
