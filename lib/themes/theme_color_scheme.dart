import 'package:flutter/material.dart';

class ThemeColor {
  static ThemeData themeData(bool isDarkMode, BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: isDarkMode ? Colors.black : Colors.white,
      backgroundColor: isDarkMode ? Colors.black : Color(0xFFF1F5FB),
      indicatorColor: isDarkMode ? Color(0xFF0E1D36) : Color(0xFFCBDCF8),
      buttonColor: isDarkMode ? Color(0xFF3B3B3B) : Color(0xff133762),
      hintColor: isDarkMode ? Color(0xFF280C0B) : Color(0xff133762),
      highlightColor: isDarkMode ? Color(0xFF372901) : Color(0xff133762),
      hoverColor: isDarkMode ? Color(0xFF3A3A3B) : Color(0xff133762),
      focusColor: isDarkMode ? Color(0xFF0B2512) : Color(0xff133762),
      disabledColor: Colors.grey,
      textSelectionColor: isDarkMode ? Colors.white : Colors.black,
      cardColor: isDarkMode ? Color(0xFF151515) : Colors.white,
      canvasColor: isDarkMode ? Colors.black : Colors.grey[50],
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkMode ? ColorScheme.dark() : ColorScheme.light()),
      appBarTheme: AppBarTheme(
        elevation: 0,
      ),
    );
  }
}
