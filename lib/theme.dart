import 'package:flutter/material.dart';



class MyThemes {
    static final darkTheme = ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: Colors.grey.shade900,
      colorScheme: ColorScheme.dark(),
    );

    static final lightTheme = ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.light(),
    );

}