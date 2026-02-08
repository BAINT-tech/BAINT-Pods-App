import 'package:flutter/material.dart';

const Color baintBlack = Colors.black;
const Color baintWhite = Colors.white;

ThemeData baintTheme = ThemeData(
  scaffoldBackgroundColor: baintWhite,
  appBarTheme: const AppBarTheme(
    backgroundColor: baintBlack,
    foregroundColor: baintWhite,
    centerTitle: true,
  ),
  switchTheme: SwitchThemeData(
    thumbColor: MaterialStatePropertyAll(baintBlack),
    trackColor: MaterialStatePropertyAll(Colors.grey),
  ),
);
