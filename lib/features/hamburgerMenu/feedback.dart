import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../provider.dart';

class FeedbackPage extends StatefulWidget {
  static const String routename = '/feedback';
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final TextEditingController _fname = TextEditingController();
  final TextEditingController _lname = TextEditingController();
  // final TextEditingController _phone = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _feedback = TextEditingController();

  final FocusNode _fnameFocus = FocusNode();

  final FocusNode _lnameFocus = FocusNode();
  final FocusNode _feedbackFocus = FocusNode();

  final FocusNode _emailFocus = FocusNode();

  final FocusNode _phoneFocus = FocusNode();

  @override
  void dispose() {
    _fname.dispose();
    _lname.dispose();
    _email.dispose();
    _phone.dispose();
    _feedback.dispose();
    _fnameFocus.dispose();
    _lnameFocus.dispose();
    _emailFocus.dispose();
    _phoneFocus.dispose();
    _feedbackFocus.dispose();

    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeChanger>(context);
    CollectionReference form =
        FirebaseFirestore.instance.collection("feedback");
    Future<void> addFeedback() {
      return form
          .add({
            'fname': _fname.text.toString(),
            'lname': _lname.text.toString(),
            'email': _email.text.toString(),
            'phoneNo': _phone.text.toString(),
            'feedback': _feedback.text.toString()
          })
          .then((value) =>
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  behavior: SnackBarBehavior.floating,
                  margin: EdgeInsets.all(20),

                  // padding: EdgeInsets.all(20),
                  backgroundColor: Colors.green,
                  content: Text(
                    "Your feedback was recorded",
                    style: TextStyle(color: Colors.white),
                  ))))
          .catchError(
              (error) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  behavior: SnackBarBehavior.floating,
                  margin: EdgeInsets.all(20),

                  // padding: EdgeInsets.all(20),
                  backgroundColor: Colors.green,
                  content: Text(
                    "The error was ${error}",
                    style: TextStyle(color: Colors.white),
                  ))));
    }
    
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          // drawer: HamburgerIcon(),
          appBar: AppBar(
            iconTheme: IconThemeData(color: darkModeButtonColor),
            centerTitle: true,
            backgroundColor:
                themeProvider.isDarkMode ? backColor : Colors.white,
            // leading: InkWell(
            //   onTap: (){
            //     Navigator.push(context, MaterialPageRoute(builder: ((context) => HamburgerIcon())));
            //   },
            //   child: Icon(
            //     Icons.menu,
            //     color: primaryColor,

            //   ),
            // ),
            title: Text(
              "FEEDBACK FORM",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: darkModeButtonColor,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Container(
                      width: 35,
                      decoration: BoxDecoration(
                        // color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.notifications_outlined,
                        color: darkModeButtonColor,
                      )),
                ),
              ),
            ],
          ),
          body: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Image.asset(
                  "/home/sinjin/jurident_vit/lib/assets/Group 33622.png"),
            ),

            Flexible(
              child: Padding(
                padding: EdgeInsets.only(top: height * 0.01),
                child: Container(
                    height: height * 0.725,
                    width: width,
                    decoration: BoxDecoration(
                        color:
                            themeProvider.isDarkMode ? Colors.white : backColor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        border: Border.all(color: Colors.black, width: 2)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: FocusScope(
                        child: ListView(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.08,
                                  top: height * 0.03,
                                  right: width * 0.3),
                              child: Text(
                                "FEEDBACK FORM",
                                style: TextStyle(
                                    fontSize: 23,
                                    color: themeProvider.isDarkMode
                                        ? backColor
                                        : darkModeButtonColor),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.08,
                                  top: height * 0.01,
                                  right: width * 0.1),
                              child: Text(
                                "We want to hear from you! Your feedback is important to us and helps us improve our application.",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: themeProvider.isDarkMode
                                        ? backColor
                                        : Colors.white),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.08,
                                  top: height * 0.03,
                                  right: width * 0.6),
                              child: Text(
                                "First Name",
                                style: TextStyle(
                                    color: themeProvider.isDarkMode
                                        ? backColor
                                        : Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.08,
                                  right: width * 0.0467,
                                  top: height * 0.004),
                              child: Theme(
                                data: ThemeData(
                                    hintColor: themeProvider.isDarkMode
                                        ? backColor
                                        : Colors.white),
                                child: TextFormField(
                                  focusNode: _fnameFocus,
                                  textInputAction: TextInputAction.next,
                                  // onFieldSubmitted: (value){
                                  //   FocusScope.of(context).;

                                  // },
                                  controller: _fname,

                                  style: TextStyle(
                                      color: themeProvider.isDarkMode
                                          ? backColor
                                          : Colors.white),

                                  // keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.edit,
                                      color: darkModeButtonColor,
                                    ),

                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 9, horizontal: 30),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: themeProvider.isDarkMode
                                                ? backColor
                                                : Colors.white)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: themeProvider.isDarkMode
                                                ? backColor
                                                : Colors.white)),
                                    // labelText: document['name'],
                                    // floatingLabelBehavior: FloatingLabelBehavior.always
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.08,
                                  top: height * 0.015,
                                  right: width * 0.6),
                              child: Text(
                                "Last Name",
                                style: TextStyle(
                                    color: themeProvider.isDarkMode
                                        ? backColor
                                        : Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.08,
                                  right: width * 0.0467,
                                  top: height * 0.004),
                              child: Theme(
                                data: ThemeData(
                                  hintColor: Colors.white,
                                ),
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  controller: _lname,
                                  focusNode: _lnameFocus,
                                  // onFieldSubmitted: (value){
                                  //   FocusScope.of(context).unfocus();
                                  // },
                                  // initialValue: document['ID'],
                                  style: TextStyle(
                                      color: themeProvider.isDarkMode
                                          ? backColor
                                          : Colors.white),

                                  // keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.edit,
                                      color: darkModeButtonColor,
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 9, horizontal: 30),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: themeProvider.isDarkMode
                                                ? backColor
                                                : Colors.white)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1,
                                            color: themeProvider.isDarkMode
                                                ? backColor
                                                : Colors.white)),
                                    // labelText: "Confirm Password",
                                    // floatingLabelBehavior: FloatingLabelBehavior.always
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.08,
                                  top: height * 0.015,
                                  right: width * 0.6),
                              child: Text(
                                "Email",
                                style: TextStyle(
                                    color: themeProvider.isDarkMode
                                        ? backColor
                                        : Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.08,
                                  right: width * 0.0467,
                                  top: height * 0.004),
                              child: Theme(
                                data: ThemeData(hintColor: Colors.white),
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  // onFieldSubmitted: (value){
                                  //   FocusScope.of(context).unfocus();
                                  // },
                                  focusNode: _emailFocus,
                                  controller: _email,
                                  // initialValue: document['Degree'],
                                  style: TextStyle(
                                      color: themeProvider.isDarkMode
                                          ? backColor
                                          : Colors.white),

                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.arrow_drop_down,
                                        color: darkModeButtonColor,
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 9, horizontal: 30),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: themeProvider.isDarkMode
                                                  ? backColor
                                                  : Colors.white)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: themeProvider.isDarkMode
                                                  ? backColor
                                                  : Colors.white)),
                                      // labelText: "Confirm Password",
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.08,
                                  top: height * 0.015,
                                  right: width * 0.6),
                              child: Text(
                                "Phone Number",
                                style: TextStyle(
                                    color: themeProvider.isDarkMode
                                        ? backColor
                                        : Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.08,
                                  right: width * 0.0467,
                                  top: height * 0.004),
                              child: Theme(
                                data: ThemeData(hintColor: Colors.white),
                                child: TextFormField(
                                  textInputAction: TextInputAction.next,
                                  focusNode: _phoneFocus,
                                  // onFieldSubmitted: (value){
                                  //   FocusScope.of(context).unfocus();
                                  // },
                                  controller: _phone,
                                  // initialValue: document['phone'],
                                  style: TextStyle(
                                      color: themeProvider.isDarkMode
                                          ? backColor
                                          : Colors.white),
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                      // prefixIcon: Icon,
                                      suffixIcon: Icon(
                                        Icons.edit,
                                        color: darkModeButtonColor,
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 9, horizontal: 30),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: themeProvider.isDarkMode
                                                  ? backColor
                                                  : Colors.white)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: themeProvider.isDarkMode
                                                  ? backColor
                                                  : Colors.white)),
                                      // labelText: "Confirm Password",
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.08,
                                  top: height * 0.015,
                                  right: width * 0.6),
                              child: Text(
                                "Feedback",
                                style: TextStyle(
                                    color: themeProvider.isDarkMode
                                        ? backColor
                                        : Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: width * 0.08,
                                  right: width * 0.0467,
                                  top: height * 0.004),
                              child: Theme(
                                data: ThemeData(hintColor: Colors.white),
                                child: TextFormField(
                                  textInputAction: TextInputAction.done,
                                  focusNode: _feedbackFocus,
                                  onFieldSubmitted: (value) {
                                    FocusScope.of(context).unfocus();
                                  },
                                  controller: _feedback,
                                  // initialValue: document['phone'],
                                  style: TextStyle(
                                      color: themeProvider.isDarkMode
                                          ? backColor
                                          : Colors.white),
                                  // keyboardType: TextInputType,
                                  decoration: InputDecoration(
                                      // prefixIcon: Icon,
                                      suffixIcon: Icon(
                                        Icons.edit,
                                        color: darkModeButtonColor,
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 9, horizontal: 30),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: themeProvider.isDarkMode
                                                  ? backColor
                                                  : Colors.white)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1,
                                              color: themeProvider.isDarkMode
                                                  ? backColor
                                                  : Colors.white)),
                                      // labelText: "Confirm Password",
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always),
                                ),
                              ),
                            ),

                            // Padding(
                            //   padding: EdgeInsets.only(
                            //       left: width * 0.08,
                            //       top: height * 0.015,
                            //       right: width * 0.6),
                            //   child:  Text(
                            //     "Password",
                            //     style: TextStyle(
                            //         color: themeProvider.isDarkMode?backColor:Colors.white,
                            //         fontSize: 16,
                            //         fontWeight: FontWeight.w500),
                            //   ),
                            // ),
                            // Padding(
                            //   padding: EdgeInsets.only(
                            //       left: width * 0.08,
                            //       right: width * 0.0467,
                            //       top: height * 0.004),
                            //   child: Theme(
                            //     data: ThemeData(hintColor: Colors.white),
                            //     child:  TextFormField
                            //     (
                            //       focusNode: _focusNode,
                            //       controller: _password,
                            //       obscureText: true,
                            //       // initialValue: document['phone'],
                            //       style: TextStyle(color:themeProvider.isDarkMode?backColor:Colors.white),
                            //       // keyboardType: TextInputType.phone,
                            //       decoration: InputDecoration(
                            //           // prefixIcon: Icon,
                            //           suffixIcon: Icon(
                            //             Icons.edit,
                            //             color: primaryColor,
                            //           ),
                            //           contentPadding: const EdgeInsets.symmetric(
                            //               vertical: 9, horizontal: 30),
                            //           enabledBorder: OutlineInputBorder(
                            //               borderSide: BorderSide(
                            //                   width: 1, color:themeProvider.isDarkMode?backColor:Colors.white)),
                            //           focusedBorder: OutlineInputBorder(
                            //               borderSide: BorderSide(
                            //                   width: 1, color:themeProvider.isDarkMode?backColor:Colors.white)),
                            //           // labelText: "Confirm Password",
                            //           floatingLabelBehavior:
                            //               FloatingLabelBehavior.always),
                            //     ),
                            //   ),
                            // ),
                            //
                            Padding(
                              padding: EdgeInsets.only(
                                  top: height * 0.01,
                                  left: width * 0.17,
                                  right: width * 0.2),
                              child: TextButton(
                                  onPressed: () {
                                    addFeedback();
                                    // final _updateRef = FirebaseFirestore.instance.collection('users').doc('zNm06PgghraB6hd3EsGoDxxJybv1');
                                    // if(_phone.text.length!=13){
                                    //   ScaffoldMessenger.of(context).showSnackBar(
                                    //     const SnackBar(content: Text('Not a valid phone number'),backgroundColor: Colors.red,)
                                    //   );

                                    // }else if(!_isEmailValid){
                                    //    ScaffoldMessenger.of(context).showSnackBar(
                                    //     const SnackBar(content: Text('Not a valid email format'),backgroundColor: Colors.red,)
                                    //   );

                                    // }
                                    // _updateRef.update({
                                    //   'username':_name.text,
                                    //   'id':_ID.text,
                                    //   'phoneNumber':_phone.text,
                                    //   'email':_email.text,
                                    //   'degree':_degree.text

                                    // });
                                    // _nameFocus.unfocus();
                                    // _idFocus.unfocus();
                                    // _degreeFocus.unfocus();
                                    // _emailFocus.unfocus();
                                    // _phoneFocus.unfocus();
                                    // ScaffoldMessenger.of(context).showSnackBar(
                                    //     const SnackBar(content: Text('Changes saved successfully'),backgroundColor: Colors.green,duration:Duration(seconds: 2),)
                                    //   );
                                  },
                                  child: Container(
                                      height: height * 0.06,
                                      width: width * 0.6,
                                      decoration: BoxDecoration(
                                          color: backColor,
                                          border: Border.all(
                                              color: darkModeButtonColor),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: const Center(
                                          child: Text(
                                        "SUBMIT",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      )))),
                            ),
                            const SizedBox(
                              height: 50,
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            ),

            // SizedBox(height: height*0.5,),
            // Container(
            //   height: height*0.81,
            //   width: width,
            //   decoration: BoxDecoration(
            //       color: backColor,
            //       borderRadius: BorderRadius.only(
            //           topLeft: Radius.circular(10),
            //           topRight: Radius.circular(10))),
            //   child: Column(
            //     children: [
            //       TextButton(onPressed: (){}, child: Text("Edit Profile")),

            //     ],
            //   ),
            // ),
          ])),
    );
  }
}
