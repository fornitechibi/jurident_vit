import 'package:flutter/material.dart';
enum TextMode {
  normal,
  bold,
  italic,
  underline,
  // link,  <- I'm not sure what you want to have happen with this one
}

const normalStyle = TextStyle();
const boldStyle = TextStyle(fontWeight: FontWeight.bold);
const italicStyle = TextStyle(fontStyle: FontStyle.italic);
const underlineStyle = TextStyle(decoration: TextDecoration.underline);

// Helper method
TextStyle getStyle(TextMode mode) {
  switch(mode) {
    case TextMode.bold: return boldStyle;
    case TextMode.italic: return italicStyle;
    case TextMode.underline: return underlineStyle;
    default: return normalStyle;
  }
}