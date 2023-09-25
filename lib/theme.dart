import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';


class ThemeNotifier with ChangeNotifier {
  bool darkTheme;

  ThemeNotifier({this.darkTheme=true});

  isDarkTheme() => darkTheme;

  setIsDarkTheme(bool themeData) async {
    darkTheme = themeData;
    notifyListeners();
  }
}


ThemeData lightthemeData() {
  

  return ThemeData.light().copyWith(
    brightness: Brightness.light,
    appBarTheme: appBarThemeLight,
    scaffoldBackgroundColor: PhcScaffoldBackgroundColorLight,
    primaryColor: PhcPrimaryColorLight,
    
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      
      primary: PhcPrimaryColorLight,
      onPrimary: PhcOnPrimaryColorLight,
      secondary: PhcSecondaryColorLight,
      onSecondary: PhcOnSecondaryColorLight,

      background: PhcBackgroundColorLight, 
      onBackground: PhcBackgroundColorLight, 

      surface: PhcScaffoldBackgroundColorLight,

      error: Colors.red, 
      onError: Colors.red, 
    ),
    // iconTheme: IconThemeData(color: FstIconLightColor),
    // primaryIconTheme: IconThemeData(color: FstPrimaryIconLightColor),
    shadowColor: PhcShadowColorLight,
    cardColor: PhcCardColorLight,
    dividerColor: PhcDividerColorLight,
    secondaryHeaderColor: PhcHeaderColorLight,
    
    
    textTheme: TextTheme(
      headline1: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorLight, fontFamily: 'Roboto', fontSize: 48, fontWeight: FontWeight.w300, letterSpacing: 1.5)),
      headline2: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorLight, fontFamily: 'Roboto', fontSize: 32, fontWeight: FontWeight.w300, letterSpacing: 1.2)),
      headline3: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorLight, fontFamily: 'Roboto', fontSize: 28, fontWeight: FontWeight.w400)),
      headline4: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorLight, fontFamily: 'Roboto', fontSize: 24, fontWeight: FontWeight.w400)),
      headline5: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorLight, fontFamily: 'Roboto', fontSize: 20, fontWeight: FontWeight.w400)),
      headline6: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorLight, fontFamily: 'Roboto', fontSize: 18, fontWeight: FontWeight.w400)),
      subtitle1: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorLight, fontFamily: 'Roboto', fontSize: 16)),
      subtitle2: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorLight, fontFamily: 'Roboto', fontSize: 14)),
      bodyText1: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorLight, fontFamily: 'Roboto', fontSize: 16)),
      bodyText2: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorLight, fontFamily: 'Roboto', fontSize: 12)),
      caption: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorLight.withOpacity(0.8), fontFamily: 'Roboto', fontSize: 12)),
      button: GoogleFonts.roboto(textStyle: TextStyle(color: PhcButtonTextColorLight, fontFamily: 'Roboto', fontSize: 16, fontWeight: FontWeight.w600, letterSpacing: 1.5)),
    ),
  );
}

// Dark Mode Theme
ThemeData darkThemeData() {
  return ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    appBarTheme: appBarThemeDark,
    scaffoldBackgroundColor: PhcScaffoldBackgroundColorDark,
    primaryColor: PhcPrimaryColorDark,
    
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,

      primary: PhcPrimaryColorDark,
      onPrimary: PhcOnPrimaryColorDark,
      secondary: PhcSecondaryColorDark,
      onSecondary: PhcOnSecondaryColorDark,
      
      

      background: PhcBackgroundColorDark, 
      onBackground: PhcBackgroundColorDark, 

      surface: PhcScaffoldBackgroundColorDark,

      error: Colors.red, 
      onError: Colors.red, 
      
    ),
    shadowColor: PhcShadowColorDark,
    cardColor: PhcCardColorDark,
    dividerColor: PhcDividerColorDark,
    secondaryHeaderColor: PhcHeaderColorDark,
    
    
    textTheme: TextTheme(
      headline1: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorDark, fontFamily: 'Roboto', fontSize: 48, fontWeight: FontWeight.w300, letterSpacing: 1.5)),
      headline2: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorDark, fontFamily: 'Roboto', fontSize: 32, fontWeight: FontWeight.w300, letterSpacing: 1.2)),
      headline3: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorDark, fontFamily: 'Roboto', fontSize: 28, fontWeight: FontWeight.w400)),
      headline4: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorDark, fontFamily: 'Roboto', fontSize: 24, fontWeight: FontWeight.w400)),
      headline5: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorDark, fontFamily: 'Roboto', fontSize: 20, fontWeight: FontWeight.w400)),
      headline6: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorDark, fontFamily: 'Roboto', fontSize: 18, fontWeight: FontWeight.w400)),
      subtitle1: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorDark, fontFamily: 'Roboto', fontSize: 16, fontWeight: FontWeight.w400)),
      subtitle2: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorDark, fontFamily: 'Roboto', fontSize: 14, fontWeight: FontWeight.w400)),
      bodyText1: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorDark, fontFamily: 'Roboto', fontSize: 16, fontWeight: FontWeight.w400)),
      bodyText2: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorDark, fontFamily: 'Roboto', fontSize: 12, fontWeight: FontWeight.w400)),
      caption: GoogleFonts.roboto(textStyle: TextStyle(color: PhcTextColorDark.withOpacity(0.8), fontFamily: 'Roboto', fontSize: 12, fontWeight: FontWeight.w400)),
      button: GoogleFonts.roboto(textStyle: TextStyle(color: PhcButtonTextColorDark, fontFamily: 'Roboto', fontSize: 16, fontWeight: FontWeight.w600, letterSpacing: 1.5)),
    ),
  );
}

AppBarTheme appBarThemeLight = AppBarTheme(
  backgroundColor: Color(0xFFFFFFFF),
  iconTheme: IconThemeData(color: PhcAppbartextColorLight),
  elevation: 1,
  titleTextStyle: GoogleFonts.roboto(textStyle: TextStyle(color: PhcAppbartextColorLight, fontFamily: 'Roboto', fontSize: 16, letterSpacing: 1.5, fontWeight: FontWeight.w600)),
);
AppBarTheme appBarThemeDark = AppBarTheme(
  backgroundColor: Color(0xFF212A47), 
  iconTheme: IconThemeData(color: PhcAppbartextColorDark),
  elevation: 1,
  titleTextStyle: GoogleFonts.roboto(textStyle: TextStyle(color: PhcAppbartextColorDark, fontFamily: 'Roboto', fontSize: 16, letterSpacing: 1.5, fontWeight: FontWeight.w600)),
);



