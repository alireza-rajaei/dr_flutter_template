import 'package:flutter/material.dart';

import 'utils/app_constant/colors.dart';

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    // primaryColor: Colors.white,
    scaffoldBackgroundColor: blueGray,
    // appBarTheme: appBarThemeDark,
    cardColor: blueGray,
    iconTheme: IconThemeData(color: Colors.white.withOpacity(.5)),
    textTheme: TextTheme(
      bodyText1: const TextStyle(
          fontSize: 20.0,
          fontFamily: 'gilroy',
          fontWeight: FontWeight.w400,
          color: Colors.white),
      headline1: const TextStyle(
          fontSize: 24.0,
          fontFamily: 'gilroy',
          fontWeight: FontWeight.w700,
          color: Colors.white),
      headline2: const TextStyle(
          fontSize: 16.0,
          fontFamily: 'gilroy',
          fontWeight: FontWeight.w600,
          color: Colors.white),
      headline3: const TextStyle(
          fontSize: 16.0,
          fontFamily: 'gilroy',
          fontWeight: FontWeight.w400,
          color: Colors.white),
      headline4: const TextStyle(
          fontSize: 14.0,
          fontFamily: 'gilroy',
          fontWeight: FontWeight.w600,
          color: Colors.white),
      headline5: TextStyle(
          fontSize: 14.0,
          fontFamily: 'gilroy',
          fontWeight: FontWeight.w400,
          color: Colors.white.withOpacity(.5)),
      headline6: const TextStyle(
          fontSize: 12.0,
          fontFamily: 'gilroy',
          fontWeight: FontWeight.w400,
          color: Colors.white),
      bodyText2: const TextStyle(
          fontSize: 12.0,
          fontFamily: 'gilroy',
          fontWeight: FontWeight.w600,
          color: Colors.white),
      subtitle2: const TextStyle(
          fontSize: 12.0,
          fontFamily: 'gilroy',
          fontWeight: FontWeight.w400,
          color: Colors.white),
    ),
    inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
            fontSize: 12.0,
            fontFamily: 'gilroy',
            fontWeight: FontWeight.w400,
            color: Colors.white.withOpacity(.4)),
        counterStyle: const TextStyle(
            fontSize: 12.0,
            fontFamily: 'gilroy',
            fontWeight: FontWeight.w400,
            color: Colors.white),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none),
    // colorScheme: ColorScheme.dark().copyWith(
    //     primary: Colors.white.withOpacity(.4), secondary: secondaryColor, error: errorColor),
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   backgroundColor: backgroundDark,
    //   selectedIconTheme: IconThemeData(color: Colors.white,size: 33),
    //   unselectedIconTheme: IconThemeData(color: navigationBottomUnselectedIconDark,size: 33),
    //   showUnselectedLabels: false,
    //   showSelectedLabels: false,
    //   type: BottomNavigationBarType.fixed,
    // ),
  );
}

// final appBarThemeLight = AppBarTheme(
//     centerTitle: true, elevation: 0, backgroundColor: backgroundLight);
// final appBarThemeDark = AppBarTheme(
//     centerTitle: true, elevation: 0, backgroundColor: contentColorLightTheme);
