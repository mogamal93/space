import 'package:flutter/material.dart';
import 'package:space/theme/AppColors.dart';

class AppTheme {

  static const TextStyle titleLarge = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static const TextStyle titleMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.gray,
  );

  static ThemeData theme = ThemeData(
    useMaterial3: true,

    scaffoldBackgroundColor: AppColors.white,

    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.blue,
      onPrimary: AppColors.white,
      secondary: AppColors.blue,
      onSecondary: AppColors.white,
      error: AppColors.red,
      onError: AppColors.white,
      surface: AppColors.white,
      onSurface: AppColors.black,
    ),



    textTheme: const TextTheme(
      titleLarge: titleLarge,
      titleMedium: titleMedium,
      bodyLarge: bodyLarge,
    ),


    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blue,
        foregroundColor: AppColors.white,

        minimumSize: const Size(double.infinity, 50),

        padding: const EdgeInsets.all(16),

        elevation: 0,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),

        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),


    inputDecorationTheme: InputDecorationTheme(

      filled: true,
      fillColor: AppColors.white,

      hintStyle: const TextStyle(
        fontSize: 16,
        color: AppColors.gray,
        fontWeight: FontWeight.normal,
      ),

      contentPadding: const EdgeInsets.all(16),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
          width: 2,
          color: AppColors.gray,
        ),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
          width: 2,
          color: AppColors.gray,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
          width: 2,
          color: AppColors.blue,
        ),
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
          width: 2,
          color: AppColors.red,
        ),
      ),

      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
          width: 2,
          color: AppColors.red,
        ),
      ),
    ),
  );
}