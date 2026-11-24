import 'package:flutter/material.dart';

class AppSpacing {
  // Base unit: 8pt
  static const double xs = 4.0;   // 0.5x
  static const double sm = 8.0;   // 1x
  static const double md = 16.0;  // 2x
  static const double lg = 24.0;  // 3x
  static const double xl = 32.0;  // 4x
  static const double xxl = 40.0; // 5x
  static const double xxxl = 48.0; // 6x
  static const double huge = 64.0; // 8x
  static const double massive = 96.0; // 12x

  // Semantic spacing
  static const double screenPadding = 24.0;
  static const double cardPadding = 16.0;
  static const double buttonPadding = 16.0;
  static const double inputPadding = 16.0;
  static const double listItemPadding = 16.0;
  static const double sectionSpacing = 32.0;
  static const double componentSpacing = 16.0;
  static const double elementSpacing = 8.0;
  static const double microSpacing = 4.0;
}

class AppRadius {
  static const double none = 0.0;
  static const double xs = 4.0;
  static const double sm = 8.0;
  static const double md = 12.0;
  static const double lg = 16.0;
  static const double xl = 20.0;
  static const double xxl = 24.0;
  static const double xxxl = 32.0;
  static const double round = 9999.0;

  // Semantic radius
  static const double button = 12.0;
  static const double card = 16.0;
  static const double input = 12.0;
  static const double modal = 24.0;
  static const double fab = 16.0;
  static const double avatar = 9999.0;
  static const double chip = 8.0;
}

class AppShadows {
  // Light theme shadows
  static const List<BoxShadow> lightXs = [
    BoxShadow(
      color: Color(0x0A102A43),
      offset: Offset(0, 1),
      blurRadius: 2,
      spreadRadius: 0,
    ),
  ];

  static const List<BoxShadow> lightSm = [
    BoxShadow(
      color: Color(0x0D102A43),
      offset: Offset(0, 1),
      blurRadius: 3,
      spreadRadius: 0,
    ),
    BoxShadow(
      color: Color(0x08102A43),
      offset: Offset(0, 2),
      blurRadius: 4,
      spreadRadius: -1,
    ),
  ];

  static const List<BoxShadow> lightMd = [
    BoxShadow(
      color: Color(0x0F102A43),
      offset: Offset(0, 4),
      blurRadius: 6,
      spreadRadius: -1,
    ),
    BoxShadow(
      color: Color(0x0A102A43),
      offset: Offset(0, 2),
      blurRadius: 4,
      spreadRadius: -1,
    ),
  ];

  static const List<BoxShadow> lightLg = [
    BoxShadow(
      color: Color(0x12102A43),
      offset: Offset(0, 10),
      blurRadius: 15,
      spreadRadius: -3,
    ),
    BoxShadow(
      color: Color(0x0D102A43),
      offset: Offset(0, 4),
      blurRadius: 6,
      spreadRadius: -2,
    ),
  ];

  static const List<BoxShadow> lightXl = [
    BoxShadow(
      color: Color(0x14102A43),
      offset: Offset(0, 20),
      blurRadius: 25,
      spreadRadius: -5,
    ),
    BoxShadow(
      color: Color(0x0F102A43),
      offset: Offset(0, 10),
      blurRadius: 10,
      spreadRadius: -5,
    ),
  ];

  // Dark theme shadows
  static const List<BoxShadow> darkXs = [
    BoxShadow(
      color: Color(0x33000000),
      offset: Offset(0, 1),
      blurRadius: 2,
      spreadRadius: 0,
    ),
  ];

  static const List<BoxShadow> darkSm = [
    BoxShadow(
      color: Color(0x40000000),
      offset: Offset(0, 1),
      blurRadius: 3,
      spreadRadius: 0,
    ),
    BoxShadow(
      color: Color(0x26000000),
      offset: Offset(0, 2),
      blurRadius: 4,
      spreadRadius: -1,
    ),
  ];

  static const List<BoxShadow> darkMd = [
    BoxShadow(
      color: Color(0x4D000000),
      offset: Offset(0, 4),
      blurRadius: 6,
      spreadRadius: -1,
    ),
    BoxShadow(
      color: Color(0x33000000),
      offset: Offset(0, 2),
      blurRadius: 4,
      spreadRadius: -1,
    ),
  ];

  static const List<BoxShadow> darkLg = [
    BoxShadow(
      color: Color(0x59000000),
      offset: Offset(0, 10),
      blurRadius: 15,
      spreadRadius: -3,
    ),
    BoxShadow(
      color: Color(0x40000000),
      offset: Offset(0, 4),
      blurRadius: 6,
      spreadRadius: -2,
    ),
  ];

  static const List<BoxShadow> darkXl = [
    BoxShadow(
      color: Color(0x66000000),
      offset: Offset(0, 20),
      blurRadius: 25,
      spreadRadius: -5,
    ),
    BoxShadow(
      color: Color(0x4D000000),
      offset: Offset(0, 10),
      blurRadius: 10,
      spreadRadius: -5,
    ),
  ];

  // Colored shadows
  static List<BoxShadow> primaryGlow({double intensity = 0.3}) => [
    BoxShadow(
      color: const Color(0xFF0F766E).withValues(alpha: intensity),
      offset: const Offset(0, 4),
      blurRadius: 12,
      spreadRadius: -2,
    ),
  ];

  static List<BoxShadow> accentGlow({double intensity = 0.3}) => [
    BoxShadow(
      color: const Color(0xFFFF8A65).withValues(alpha: intensity),
      offset: const Offset(0, 4),
      blurRadius: 12,
      spreadRadius: -2,
    ),
  ];

  static List<BoxShadow> errorGlow({double intensity = 0.3}) => [
    BoxShadow(
      color: const Color(0xFFEF4444).withValues(alpha: intensity),
      offset: const Offset(0, 4),
      blurRadius: 12,
      spreadRadius: -2,
    ),
  ];
}