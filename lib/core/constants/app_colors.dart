import 'package:flutter/material.dart';

class AppColors {
  // Primary - Teal
  static const Color primary = Color(0xFF0F766E);
  static const Color primaryLight = Color(0xFF14B8A6);
  static const Color primaryDark = Color(0xFF0D9488);
  static const Color primaryContainer = Color(0xFFCCFBF1);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onPrimaryContainer = Color(0xFF00201E);

  // Secondary - Deep Navy
  static const Color secondary = Color(0xFF102A43);
  static const Color secondaryLight = Color(0xFF1E3A5F);
  static const Color secondaryDark = Color(0xFF0A1A2E);
  static const Color secondaryContainer = Color(0xFFD6E4F0);
  static const Color onSecondary = Color(0xFFFFFFFF);
  static const Color onSecondaryContainer = Color(0xFF001830);

  // Accent - Coral
  static const Color accent = Color(0xFFFF8A65);
  static const Color accentLight = Color(0xFFFFAB91);
  static const Color accentDark = Color(0xFFE67E5A);
  static const Color accentContainer = Color(0xFFFFE0DB);
  static const Color onAccent = Color(0xFFFFFFFF);
  static const Color onAccentContainer = Color(0xFF3D1A12);

  // Light Theme
  static const Color lightBackground = Color(0xFFF8FAFC);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightSurfaceVariant = Color(0xFFF1F5F9);
  static const Color lightSurfaceContainer = Color(0xFFE2E8F0);
  static const Color lightPrimaryText = Color(0xFF102A43);
  static const Color lightSecondaryText = Color(0xFF64748B);
  static const Color lightTertiaryText = Color(0xFF94A3B8);
  static const Color lightBorder = Color(0xFFE2E8F0);
  static const Color lightDivider = Color(0xFFE2E8F0);
  static const Color lightShadow = Color(0x1A102A43);
  static const Color lightError = Color(0xFFB3261E);
  static const Color lightErrorContainer = Color(0xFFFCECEA);
  static const Color lightSuccess = Color(0xFF0F766E);
  static const Color lightSuccessContainer = Color(0xFFCCFBF1);
  static const Color lightWarning = Color(0xFFF57C00);
  static const Color lightWarningContainer = Color(0xFFFFF3E0);

  // Dark Theme
  static const Color darkBackground = Color(0xFF0B1220);
  static const Color darkSurface = Color(0xFF162536);
  static const Color darkSurfaceVariant = Color(0xFF1E3448);
  static const Color darkSurfaceContainer = Color(0xFF294257);
  static const Color darkPrimaryText = Color(0xFFF8FAFC);
  static const Color darkSecondaryText = Color(0xFFA7B6C7);
  static const Color darkTertiaryText = Color(0xFF7D8FA0);
  static const Color darkBorder = Color(0xFF294257);
  static const Color darkDivider = Color(0xFF294257);
  static const Color darkShadow = Color(0x33000000);
  static const Color darkError = Color(0xFFFFB4AB);
  static const Color darkErrorContainer = Color(0xFF4A1411);
  static const Color darkSuccess = Color(0xFF5EEAD4);
  static const Color darkSuccessContainer = Color(0xFF064E3E);
  static const Color darkWarning = Color(0xFFFFB74D);
  static const Color darkWarningContainer = Color(0xFF4A3008);

  // Semantic Colors
  static const Color online = Color(0xFF0F766E);
  static const Color offline = Color(0xFF94A3B8);
  static const Color recording = Color(0xFFEF4444);
  static const Color processing = Color(0xFFF59E0B);
  static const Color speaking = Color(0xFF8B5CF6);

  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primary, primaryLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    colors: [secondary, secondaryLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient accentGradient = LinearGradient(
    colors: [accent, accentLight],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient surfaceGradient = LinearGradient(
    colors: [Color(0xFFFFFFFF), Color(0xFFF8FAFC)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient darkSurfaceGradient = LinearGradient(
    colors: [Color(0xFF162536), Color(0xFF0B1220)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}