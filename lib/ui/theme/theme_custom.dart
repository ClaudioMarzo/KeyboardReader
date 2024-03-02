import 'package:flutter/material.dart';
import 'package:profit_margin/ui/style/colors.dart';
import 'package:profit_margin/ui/style/text_style.dart';

class ThemeConfig {
  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(7),
    borderSide: BorderSide(color: Colors.grey[400]!),
  );

  ThemeConfig._();

  static final theme = ThemeData(
    // scrollbarTheme: ScrollbarThemeData(
    //   thumbColor: MaterialStateProperty.all(ColorsCustom.i.blue),
    // ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsCustom.i.blue,
      elevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    // primaryColor: ColorsApp.i.primary,
    // colorScheme: ColorScheme.fromSeed(
    //     seedColor: ColorsApp.i.primary,
    //     primary: ColorsApp.i.primary,
    //     secondary: ColorsApp.i.secondary),
    // elevatedButtonTheme:
    //     ElevatedButtonThemeData(style: AppStyles.i.primaryButton),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.all(13),
      border: _defaultInputBorder,
      enabledBorder: _defaultInputBorder,
      focusedBorder: _defaultInputBorder,
      labelStyle: TextStyles.i.textRegular.copyWith(color: Colors.black),
      errorStyle: TextStyles.i.textRegular.copyWith(color: Colors.redAccent),
    ),
  );
}

class ColorsApp {}
