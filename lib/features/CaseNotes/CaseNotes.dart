import 'package:flutter/material.dart';
import 'package:juridentt/features/client_search/widgets.dart';


class CaseNote extends StatefulWidget {
  static const String routename = '/caseNotes';
  const CaseNote({super.key});

  @override
  State<CaseNote> createState() => _CaseNoteState();
}

class _CaseNoteState extends State<CaseNote> {
  bool isItalic=true;
  
  final TextEditingController _controller = TextEditingController();
  //  final TextEditingController _boldTextEditingController =
      // TextEditingController();
  // bool isTextBold = false;
  // FocusNode node = FocusNode();

  // void toggleItalic(bool newValue){
  //   setState(() {
  //     isItalic=newValue;
  //   });
  // }

  


  @override
  void dispose() {
    //  _controller.removeListener(_updateMainText);
    // _controller.dispose();
    // _boldTextEditingController.dispose();
    // node.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    // final themeProvider = Provider.of<ThemeChanger>(context);
    return CustomeCaseNotes(lawyerName: "Abhinav", time: "22/01/2023",isItalic: isItalic,controller: _controller,);
}
}


