import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  // Font Families
  static const String primaryFont = 'Inter';
  static const String displayFont = 'InterDisplay';
  static const String fallbackFont = 'Roboto';

  // Font Weights
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;

  // Display Styles (Large headings)
  static TextStyle displayLarge({
    Color? color,
    FontWeight? weight,
    double? letterSpacing,
    double? height,
  }) =>
      GoogleFonts.interDisplay(
        fontSize: 57,
        fontWeight: weight ?? bold,
        letterSpacing: letterSpacing ?? -0.25,
        height: height ?? 1.12,
        color: color,
      );

  static TextStyle displayMedium({
    Color? color,
    FontWeight? weight,
    double? letterSpacing,
    double? height,
  }) =>
      GoogleFonts.interDisplay(
        fontSize: 45,
        fontWeight: weight ?? bold,
        letterSpacing: letterSpacing ?? 0,
        height: height ?? 1.16,
        color: color,
      );

  static TextStyle displaySmall({
    Color? color,
    FontWeight? weight,
    double? letterSpacing,
    double? height,
  }) =>
      GoogleFonts.interDisplay(
        fontSize: 36,
        fontWeight: weight ?? semiBold,
        letterSpacing: letterSpacing ?? 0,
        height: height ?? 1.22,
        color: color,
      );

  // Headline Styles
  static TextStyle headlineLarge({
    Color? color,
    FontWeight? weight,
    double? letterSpacing,
    double? height,
  }) =>
      GoogleFonts.inter(
        fontSize: 32,
        fontWeight: weight ?? semiBold,
        letterSpacing: letterSpacing ?? 0,
        height: height ?? 1.25,
        color: color,
      );

  static TextStyle headlineMedium({
    Color? color,
    FontWeight? weight,
    double? letterSpacing,
    double? height,
  }) =>
      GoogleFonts.inter(
        fontSize: 28,
        fontWeight: weight ?? semiBold,
        letterSpacing: letterSpacing ?? 0,
        height: height ?? 1.29,
        color: color,
      );

  static TextStyle headlineSmall({
    Color? color,
    FontWeight? weight,
    double? letterSpacing,
    double? height,
  }) =>
      GoogleFonts.inter(
        fontSize: 24,
        fontWeight: weight ?? semiBold,
        letterSpacing: letterSpacing ?? 0,
        height: height ?? 1.33,
        color: color,
      );

  // Title Styles
  static TextStyle titleLarge({
    Color? color,
    FontWeight? weight,
    double? letterSpacing,
    double? height,
  }) =>
      GoogleFonts.inter(
        fontSize: 22,
        fontWeight: weight ?? semiBold,
        letterSpacing: letterSpacing ?? 0,
        height: height ?? 1.27,
        color: color,
      );

  static TextStyle titleMedium({
    Color? color,
    FontWeight? weight,
    double? letterSpacing,
    double? height,
  }) =>
      GoogleFonts.inter(
        fontSize: 16,
        fontWeight: weight ?? medium,
        letterSpacing: letterSpacing ?? 0.15,
        height: height ?? 1.5,
        color: color,
      );

  static TextStyle titleSmall({
    Color? color,
    FontWeight? weight,
    double? letterSpacing,
    double? height,
  }) =>
      GoogleFonts.inter(
        fontSize: 14,
        fontWeight: weight ?? medium,
        letterSpacing: letterSpacing ?? 0.1,
        height: height ?? 1.43,
        color: color,
      );

  // Body Styles
  static TextStyle bodyLarge({
    Color? color,
    FontWeight? weight,
    double? letterSpacing,
    double? height,
  }) =>
      GoogleFonts.inter(
        fontSize: 16,
        fontWeight: weight ?? regular,
        letterSpacing: letterSpacing ?? 0.5,
        height: height ?? 1.5,
        color: color,
      );

  static TextStyle bodyMedium({
    Color? color,
    FontWeight? weight,
    double? letterSpacing,
    double? height,
  }) =>
      GoogleFonts.inter(
        fontSize: 14,
        fontWeight: weight ?? regular,
        letterSpacing: letterSpacing ?? 0.25,
        height: height ?? 1.43,
        color: color,
      );

  static TextStyle bodySmall({
    Color? color,
    FontWeight? weight,
    double? letterSpacing,
    double? height,
  }) =>
      GoogleFonts.inter(
        fontSize: 12,
        fontWeight: weight ?? regular,
        letterSpacing: letterSpacing ?? 0.4,
        height: height ?? 1.33,
        color: color,
      );

  // Label Styles
  static TextStyle labelLarge({
    Color? color,
    FontWeight? weight,
    double? letterSpacing,
    double? height,
  }) =>
      GoogleFonts.inter(
        fontSize: 14,
        fontWeight: weight ?? medium,
        letterSpacing: letterSpacing ?? 0.1,
        height: height ?? 1.43,
        color: color,
      );

  static TextStyle labelMedium({
    Color? color,
    FontWeight? weight,
    double? letterSpacing,
    double? height,
  }) =>
      GoogleFonts.inter(
        fontSize: 12,
        fontWeight: weight ?? medium,
        letterSpacing: letterSpacing ?? 0.5,
        height: height ?? 1.33,
        color: color,
      );

  static TextStyle labelSmall({
    Color? color,
    FontWeight? weight,
    double? letterSpacing,
    double? height,
  }) =>
      GoogleFonts.inter(
        fontSize: 11,
        fontWeight: weight ?? medium,
        letterSpacing: letterSpacing ?? 0.5,
        height: height ?? 1.45,
        color: color,
      );

  // Custom Styles for App
  static TextStyle greetingStyle({
    Color? color,
  }) =>
      GoogleFonts.interDisplay(
        fontSize: 28,
        fontWeight: bold,
        letterSpacing: -0.2,
        height: 1.2,
        color: color,
      );

  static TextStyle statValueStyle({
    Color? color,
  }) =>
      GoogleFonts.interDisplay(
        fontSize: 36,
        fontWeight: bold,
        letterSpacing: -0.5,
        height: 1.1,
        color: color,
      );

  static TextStyle statLabelStyle({
    Color? color,
  }) =>
      GoogleFonts.inter(
        fontSize: 12,
        fontWeight: medium,
        letterSpacing: 0.5,
        height: 1.33,
        color: color,
      );

  static TextStyle buttonStyle({
    Color? color,
  }) =>
      GoogleFonts.inter(
        fontSize: 16,
        fontWeight: semiBold,
        letterSpacing: 0.1,
        height: 1.25,
        color: color,
      );

  static TextStyle captionStyle({
    Color? color,
  }) =>
      GoogleFonts.inter(
        fontSize: 11,
        fontWeight: regular,
        letterSpacing: 0.4,
        height: 1.45,
        color: color,
      );

  static TextStyle overlineStyle({
    Color? color,
  }) =>
      GoogleFonts.inter(
        fontSize: 10,
        fontWeight: medium,
        letterSpacing: 1.5,
        height: 1.6,
        color: color,
      );
}