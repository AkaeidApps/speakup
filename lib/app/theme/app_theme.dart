import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';
import '../constants/app_spacing.dart';
import '../constants/app_typography.dart';

class AppTheme {
  // Light Theme
  static ThemeData get lightTheme {
    const ColorScheme colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
      primaryContainer: AppColors.primaryContainer,
      onPrimaryContainer: AppColors.onPrimaryContainer,
      secondary: AppColors.secondary,
      onSecondary: AppColors.onSecondary,
      secondaryContainer: AppColors.secondaryContainer,
      onSecondaryContainer: AppColors.onSecondaryContainer,
      tertiary: AppColors.accent,
      onTertiary: AppColors.onAccent,
      tertiaryContainer: AppColors.accentContainer,
      onTertiaryContainer: AppColors.onAccentContainer,
      error: AppColors.lightError,
      onError: AppColors.onPrimary,
      errorContainer: AppColors.lightErrorContainer,
      onErrorContainer: AppColors.lightError,
      surface: AppColors.lightSurface,
      onSurface: AppColors.lightPrimaryText,
      surfaceContainerHighest: AppColors.lightSurfaceContainer,
      onSurfaceVariant: AppColors.lightSecondaryText,
      outline: AppColors.lightBorder,
      outlineVariant: AppColors.lightDivider,
      shadow: AppColors.lightShadow,
      scrim: AppColors.lightShadow,
      inverseSurface: AppColors.darkSurface,
      onInverseSurface: AppColors.darkPrimaryText,
      inversePrimary: AppColors.primaryLight,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.lightBackground,
      canvasColor: AppColors.lightSurface,
      fontFamily: AppTypography.primaryFont,
      textTheme: _textTheme(colorScheme),
      appBarTheme: _appBarTheme(colorScheme),
      cardTheme: _cardTheme(colorScheme),
      elevatedButtonTheme: _elevatedButtonTheme(colorScheme),
      filledButtonTheme: _filledButtonTheme(colorScheme),
      outlinedButtonTheme: _outlinedButtonTheme(colorScheme),
      textButtonTheme: _textButtonTheme(colorScheme),
      inputDecorationTheme: _inputDecorationTheme(colorScheme),
      chipTheme: _chipTheme(colorScheme),
      dialogTheme: _dialogTheme(colorScheme),
      bottomSheetTheme: _bottomSheetTheme(colorScheme),
      navigationBarTheme: _navigationBarTheme(colorScheme),
      tabBarTheme: _tabBarTheme(colorScheme),
      dividerTheme: _dividerTheme(colorScheme),
      listTileTheme: _listTileTheme(colorScheme),
      tooltipTheme: _tooltipTheme(colorScheme),
      snackBarTheme: _snackBarTheme(colorScheme),
      floatingActionButtonTheme: _fabTheme(colorScheme),
      progressIndicatorTheme: _progressIndicatorTheme(colorScheme),
      sliderTheme: _sliderTheme(colorScheme),
      switchTheme: _switchTheme(colorScheme),
      checkboxTheme: _checkboxTheme(colorScheme),
      radioTheme: _radioTheme(colorScheme),
      iconTheme: _iconTheme(colorScheme),
      extensions: [
        _customThemeExtension(colorScheme),
      ],
    );
  }

  // Dark Theme
  static ThemeData get darkTheme {
    const ColorScheme colorScheme = ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primaryLight,
      onPrimary: AppColors.secondaryDark,
      primaryContainer: AppColors.primaryDark,
      onPrimaryContainer: AppColors.primaryContainer,
      secondary: AppColors.secondaryLight,
      onSecondary: AppColors.secondaryDark,
      secondaryContainer: AppColors.secondary,
      onSecondaryContainer: AppColors.secondaryContainer,
      tertiary: AppColors.accentLight,
      onTertiary: AppColors.secondaryDark,
      tertiaryContainer: AppColors.accentDark,
      onTertiaryContainer: AppColors.accentContainer,
      error: AppColors.darkError,
      onError: AppColors.darkBackground,
      errorContainer: AppColors.darkErrorContainer,
      onErrorContainer: AppColors.darkError,
      surface: AppColors.darkSurface,
      onSurface: AppColors.darkPrimaryText,
      surfaceContainerHighest: AppColors.darkSurfaceContainer,
      onSurfaceVariant: AppColors.darkSecondaryText,
      outline: AppColors.darkBorder,
      outlineVariant: AppColors.darkDivider,
      shadow: AppColors.darkShadow,
      scrim: AppColors.darkShadow,
      inverseSurface: AppColors.lightSurface,
      onInverseSurface: AppColors.lightPrimaryText,
      inversePrimary: AppColors.primary,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.darkBackground,
      canvasColor: AppColors.darkSurface,
      fontFamily: AppTypography.primaryFont,
      textTheme: _textTheme(colorScheme),
      appBarTheme: _appBarTheme(colorScheme),
      cardTheme: _cardTheme(colorScheme),
      elevatedButtonTheme: _elevatedButtonTheme(colorScheme),
      filledButtonTheme: _filledButtonTheme(colorScheme),
      outlinedButtonTheme: _outlinedButtonTheme(colorScheme),
      textButtonTheme: _textButtonTheme(colorScheme),
      inputDecorationTheme: _inputDecorationTheme(colorScheme),
      chipTheme: _chipTheme(colorScheme),
      dialogTheme: _dialogTheme(colorScheme),
      bottomSheetTheme: _bottomSheetTheme(colorScheme),
      navigationBarTheme: _navigationBarTheme(colorScheme),
      tabBarTheme: _tabBarTheme(colorScheme),
      dividerTheme: _dividerTheme(colorScheme),
      listTileTheme: _listTileTheme(colorScheme),
      tooltipTheme: _tooltipTheme(colorScheme),
      snackBarTheme: _snackBarTheme(colorScheme),
      floatingActionButtonTheme: _fabTheme(colorScheme),
      progressIndicatorTheme: _progressIndicatorTheme(colorScheme),
      sliderTheme: _sliderTheme(colorScheme),
      switchTheme: _switchTheme(colorScheme),
      checkboxTheme: _checkboxTheme(colorScheme),
      radioTheme: _radioTheme(colorScheme),
      iconTheme: _iconTheme(colorScheme),
      extensions: [
        _customThemeExtension(colorScheme),
      ],
    );
  }

  static TextTheme _textTheme(ColorScheme colorScheme) => TextTheme(
        displayLarge: AppTypography.displayLarge(color: colorScheme.onSurface),
        displayMedium: AppTypography.displayMedium(color: colorScheme.onSurface),
        displaySmall: AppTypography.displaySmall(color: colorScheme.onSurface),
        headlineLarge: AppTypography.headlineLarge(color: colorScheme.onSurface),
        headlineMedium: AppTypography.headlineMedium(color: colorScheme.onSurface),
        headlineSmall: AppTypography.headlineSmall(color: colorScheme.onSurface),
        titleLarge: AppTypography.titleLarge(color: colorScheme.onSurface),
        titleMedium: AppTypography.titleMedium(color: colorScheme.onSurface),
        titleSmall: AppTypography.titleSmall(color: colorScheme.onSurface),
        bodyLarge: AppTypography.bodyLarge(color: colorScheme.onSurface),
        bodyMedium: AppTypography.bodyMedium(color: colorScheme.onSurface),
        bodySmall: AppTypography.bodySmall(color: colorScheme.onSurfaceVariant),
        labelLarge: AppTypography.labelLarge(color: colorScheme.onSurface),
        labelMedium: AppTypography.labelMedium(color: colorScheme.onSurfaceVariant),
        labelSmall: AppTypography.labelSmall(color: colorScheme.onSurfaceVariant),
      );

  static AppBarTheme _appBarTheme(ColorScheme colorScheme) => AppBarTheme(
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        foregroundColor: colorScheme.onSurface,
        titleTextStyle: AppTypography.titleLarge(color: colorScheme.onSurface),
        toolbarHeight: 56,
        toolbarTextStyle: AppTypography.bodyMedium(color: colorScheme.onSurface),
      );

  static CardThemeData _cardTheme(ColorScheme colorScheme) => CardThemeData(
        elevation: 0,
        shadowColor: colorScheme.shadow,
        surfaceTintColor: Colors.transparent,
        color: colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.card),
          side: BorderSide(color: colorScheme.outlineVariant, width: 0.5),
        ),
        margin: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
      );

  static ElevatedButtonThemeData _elevatedButtonTheme(ColorScheme colorScheme) =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          disabledBackgroundColor: colorScheme.surfaceContainerHighest,
          disabledForegroundColor: colorScheme.onSurfaceVariant,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.md,
          ),
          minimumSize: const Size(88, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.button),
          ),
          textStyle: AppTypography.buttonStyle(),
          side: BorderSide.none,
        ).copyWith(
          overlayColor: WidgetStateProperty.resolveWith<Color?>(
            (states) {
              if (states.contains(WidgetState.pressed)) {
                return colorScheme.onPrimary.withValues(alpha: 0.1);
              }
              if (states.contains(WidgetState.hovered)) {
                return colorScheme.onPrimary.withValues(alpha: 0.08);
              }
              return null;
            },
          ),
        ),
      );

  static FilledButtonThemeData _filledButtonTheme(ColorScheme colorScheme) =>
      FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          disabledBackgroundColor: colorScheme.surfaceContainerHighest,
          disabledForegroundColor: colorScheme.onSurfaceVariant,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.md,
          ),
          minimumSize: const Size(88, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.button),
          ),
          textStyle: AppTypography.buttonStyle(),
        ),
      );

  static OutlinedButtonThemeData _outlinedButtonTheme(ColorScheme colorScheme) =>
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.primary,
          disabledForegroundColor: colorScheme.onSurfaceVariant,
          side: BorderSide(color: colorScheme.outline, width: 1.5),
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.md,
          ),
          minimumSize: const Size(88, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.button),
          ),
          textStyle: AppTypography.buttonStyle(color: colorScheme.primary),
        ).copyWith(
          side: WidgetStateProperty.resolveWith<BorderSide?>(
            (states) {
              if (states.contains(WidgetState.pressed)) {
                return BorderSide(color: colorScheme.primary, width: 2);
              }
              if (states.contains(WidgetState.hovered)) {
                return BorderSide(color: colorScheme.primary, width: 1.5);
              }
              return BorderSide(color: colorScheme.outline, width: 1.5);
            },
          ),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>(
            (states) {
              if (states.contains(WidgetState.pressed)) {
                return colorScheme.primaryContainer;
              }
              if (states.contains(WidgetState.hovered)) {
                return colorScheme.primaryContainer.withValues(alpha: 0.5);
              }
              return null;
            },
          ),
        ),
      );

  static TextButtonThemeData _textButtonTheme(ColorScheme colorScheme) =>
      TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorScheme.primary,
          disabledForegroundColor: colorScheme.onSurfaceVariant,
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.md,
            vertical: AppSpacing.sm,
          ),
          minimumSize: const Size(64, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.button),
          ),
          textStyle: AppTypography.labelLarge(color: colorScheme.primary),
        ).copyWith(
          backgroundColor: WidgetStateProperty.resolveWith<Color?>(
            (states) {
              if (states.contains(WidgetState.pressed)) {
                return colorScheme.primaryContainer;
              }
              if (states.contains(WidgetState.hovered)) {
                return colorScheme.primaryContainer.withValues(alpha: 0.5);
              }
              return null;
            },
          ),
        ),
      );

  static InputDecorationTheme _inputDecorationTheme(ColorScheme colorScheme) =>
      InputDecorationTheme(
        filled: true,
        fillColor: colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.inputPadding,
          vertical: AppSpacing.inputPadding,
        ),
        labelStyle: AppTypography.bodyMedium(color: colorScheme.onSurfaceVariant),
        hintStyle: AppTypography.bodyMedium(color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6)),
        errorStyle: AppTypography.bodySmall(color: colorScheme.error),
        floatingLabelStyle: AppTypography.bodyMedium(color: colorScheme.primary),
        prefixIconColor: WidgetStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(WidgetState.focused)) {
              return colorScheme.primary;
            }
            return colorScheme.onSurfaceVariant;
          },
        ),
        suffixIconColor: WidgetStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(WidgetState.focused)) {
              return colorScheme.primary;
            }
            return colorScheme.onSurfaceVariant;
          },
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.input),
          borderSide: BorderSide(color: colorScheme.outline, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.input),
          borderSide: BorderSide(color: colorScheme.outline, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.input),
          borderSide: BorderSide(color: colorScheme.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.input),
          borderSide: BorderSide(color: colorScheme.error, width: 1.5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.input),
          borderSide: BorderSide(color: colorScheme.error, width: 2),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.input),
          borderSide: BorderSide(color: colorScheme.outlineVariant, width: 1),
        ),
      );

  static ChipThemeData _chipTheme(ColorScheme colorScheme) => ChipThemeData(
        backgroundColor: colorScheme.surfaceContainerHighest,
        disabledColor: colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
        selectedColor: colorScheme.primaryContainer,
        secondarySelectedColor: colorScheme.secondaryContainer,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.xs,
        ),
        labelStyle: AppTypography.labelMedium(color: colorScheme.onSurface),
        secondaryLabelStyle: AppTypography.labelMedium(color: colorScheme.onPrimaryContainer),
        brightness: colorScheme.brightness,
        elevation: 0,
        pressElevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.chip),
          side: BorderSide(color: colorScheme.outlineVariant, width: 1),
        ),
        selectedShadowColor: Colors.transparent,
        showCheckmark: false,
      );

  static DialogThemeData _dialogTheme(ColorScheme colorScheme) => DialogThemeData(
        elevation: 0,
        shadowColor: colorScheme.shadow,
        surfaceTintColor: Colors.transparent,
        backgroundColor: colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.modal),
        ),
        titleTextStyle: AppTypography.titleLarge(color: colorScheme.onSurface),
        contentTextStyle: AppTypography.bodyMedium(color: colorScheme.onSurface),
        alignment: Alignment.center,
        insetPadding: const EdgeInsets.all(AppSpacing.screenPadding),
      );

  static BottomSheetThemeData _bottomSheetTheme(ColorScheme colorScheme) =>
      BottomSheetThemeData(
        elevation: 0,
        shadowColor: colorScheme.shadow,
        surfaceTintColor: Colors.transparent,
        backgroundColor: colorScheme.surface,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(AppRadius.modal)),
        ),
        clipBehavior: Clip.antiAlias,
        modalBarrierColor: colorScheme.scrim.withValues(alpha: 0.5),
        constraints: BoxConstraints(
          maxHeight: MediaQuery.sizeOf(WidgetStateBuilder(() => null).context).height * 0.9,
        ),
      );

  static NavigationBarThemeData _navigationBarTheme(ColorScheme colorScheme) =>
      NavigationBarThemeData(
        height: 72,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: colorScheme.surface.withValues(alpha: 0.95),
        indicatorColor: colorScheme.primaryContainer,
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.lg),
        ),
        labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return AppTypography.labelMedium(color: colorScheme.onPrimaryContainer, weight: FontWeight.w600);
            }
            return AppTypography.labelMedium(color: colorScheme.onSurfaceVariant);
          },
        ),
        iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return IconThemeData(color: colorScheme.onPrimaryContainer, size: 24);
            }
            return IconThemeData(color: colorScheme.onSurfaceVariant, size: 24);
          },
        ),
      );

  static TabBarThemeData _tabBarTheme(ColorScheme colorScheme) => TabBarThemeData(
        labelColor: colorScheme.primary,
        unselectedLabelColor: colorScheme.onSurfaceVariant,
        indicatorColor: colorScheme.primary,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 3,
        dividerColor: Colors.transparent,
        labelStyle: AppTypography.labelLarge(weight: FontWeight.w600),
        unselectedLabelStyle: AppTypography.labelLarge(weight: FontWeight.w500),
        overlayColor: WidgetStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(WidgetState.pressed)) {
              return colorScheme.primaryContainer;
            }
            return null;
          },
        ),
      );

  static DividerThemeData _dividerTheme(ColorScheme colorScheme) => DividerThemeData(
        color: colorScheme.outlineVariant,
        thickness: 0.5,
        space: AppSpacing.md,
        indent: 0,
        endIndent: 0,
      );

  static ListTileThemeData _listTileTheme(ColorScheme colorScheme) => ListTileThemeData(
        contentPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.md),
        titleTextStyle: AppTypography.titleMedium(color: colorScheme.onSurface),
        subtitleTextStyle: AppTypography.bodyMedium(color: colorScheme.onSurfaceVariant),
        leadingAndTrailingTextStyle: AppTypography.bodyMedium(color: colorScheme.onSurfaceVariant),
        iconColor: colorScheme.onSurfaceVariant,
        textColor: colorScheme.onSurface,
        selectedColor: colorScheme.primary,
        selectedTileColor: colorScheme.primaryContainer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadius.md)),
        tileColor: Colors.transparent,
        selectedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadius.md)),
        minVerticalPadding: AppSpacing.sm,
        horizontalTitleGap: AppSpacing.md,
      );

  static TooltipThemeData _tooltipTheme(ColorScheme colorScheme) => TooltipThemeData(
        decoration: BoxDecoration(
          color: colorScheme.inverseSurface,
          borderRadius: BorderRadius.circular(AppRadius.sm),
        ),
        textStyle: AppTypography.labelSmall(color: colorScheme.onInverseSurface),
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md, vertical: AppSpacing.sm),
        verticalOffset: 8,
        preferBelow: true,
        excludeFromSemantics: false,
      );

  static SnackBarThemeData _snackBarTheme(ColorScheme colorScheme) => SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: colorScheme.inverseSurface,
        contentTextStyle: AppTypography.bodyMedium(color: colorScheme.onInverseSurface),
        actionTextColor: colorScheme.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadius.md)),
        elevation: 6,
        padding: const EdgeInsets.all(AppSpacing.md),
        insetPadding: const EdgeInsets.all(AppSpacing.md),
        dismissDirection: DismissDirection.horizontal,
      );

  static FloatingActionButtonThemeData _fabTheme(ColorScheme colorScheme) =>
      FloatingActionButtonThemeData(
        elevation: 4,
        focusElevation: 6,
        hoverElevation: 8,
        highlightElevation: 10,
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        disabledBackgroundColor: colorScheme.surfaceContainerHighest,
        disabledForegroundColor: colorScheme.onSurfaceVariant,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadius.fab)),
        extendedTextStyle: AppTypography.buttonStyle(),
        extendedIconLabelSpacing: AppSpacing.sm,
      );

  static ProgressIndicatorThemeData _progressIndicatorTheme(ColorScheme colorScheme) =>
      ProgressIndicatorThemeData(
        color: colorScheme.primary,
        linearTrackColor: colorScheme.surfaceContainerHighest,
        circularTrackColor: colorScheme.surfaceContainerHighest,
        refreshBackgroundColor: colorScheme.surfaceContainerHighest,
      );

  static SliderThemeData _sliderTheme(ColorScheme colorScheme) => SliderThemeData(
        activeTrackColor: colorScheme.primary,
        inactiveTrackColor: colorScheme.surfaceContainerHighest,
        thumbColor: colorScheme.primary,
        overlayColor: colorScheme.primary.withValues(alpha: 0.1),
        valueIndicatorColor: colorScheme.primary,
        valueIndicatorTextStyle: AppTypography.labelSmall(color: colorScheme.onPrimary),
        trackHeight: 4,
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 20),
        activeTickMarkColor: colorScheme.primary,
        inactiveTickMarkColor: colorScheme.surfaceContainerHighest,
      );

  static SwitchThemeData _switchTheme(ColorScheme colorScheme) => SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return colorScheme.primary;
            }
            return colorScheme.outline;
          },
        ),
        trackColor: WidgetStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return colorScheme.primaryContainer;
            }
            return colorScheme.surfaceContainerHighest;
          },
        ),
        overlayColor: WidgetStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return colorScheme.primary.withValues(alpha: 0.1);
            }
            return colorScheme.onSurface.withValues(alpha: 0.1);
          },
        ),
        trackOutlineColor: WidgetStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return colorScheme.primary;
            }
            return colorScheme.outline;
          },
        ),
      );

  static CheckboxThemeData _checkboxTheme(ColorScheme colorScheme) => CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return colorScheme.primary;
            }
            return Colors.transparent;
          },
        ),
        checkColor: WidgetStateProperty.all(colorScheme.onPrimary),
        side: WidgetStateProperty.resolveWith<BorderSide?>(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return BorderSide(color: colorScheme.primary, width: 2);
            }
            return BorderSide(color: colorScheme.outline, width: 2);
          },
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadius.xs)),
        overlayColor: WidgetStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return colorScheme.primary.withValues(alpha: 0.1);
            }
            return colorScheme.onSurface.withValues(alpha: 0.1);
          },
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      );

  static RadioThemeData _radioTheme(ColorScheme colorScheme) => RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return colorScheme.primary;
            }
            return colorScheme.outline;
          },
        ),
        overlayColor: WidgetStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return colorScheme.primary.withValues(alpha: 0.1);
            }
            return colorScheme.onSurface.withValues(alpha: 0.1);
          },
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      );

  static IconThemeData _iconTheme(ColorScheme colorScheme) => IconThemeData(
        color: colorScheme.onSurfaceVariant,
        size: 24,
        opacity: 1.0,
        fill: 0.0,
        weight: 400,
        grade: 0,
        opticalSize: 24,
      );

  static _CustomThemeExtension _customThemeExtension(ColorScheme colorScheme) =>
      _CustomThemeExtension(
        primaryGradient: AppColors.primaryGradient,
        secondaryGradient: AppColors.secondaryGradient,
        accentGradient: AppColors.accentGradient,
        surfaceGradient: colorScheme.brightness == Brightness.light
            ? AppColors.surfaceGradient
            : AppColors.darkSurfaceGradient,
        spacing: const _SpacingTokens(),
        radius: const _RadiusTokens(),
        shadows: _ShadowTokens(isDark: colorScheme.brightness == Brightness.dark),
      );
}

class _CustomThemeExtension extends ThemeExtension<_CustomThemeExtension> {
  final LinearGradient primaryGradient;
  final LinearGradient secondaryGradient;
  final LinearGradient accentGradient;
  final LinearGradient surfaceGradient;
  final _SpacingTokens spacing;
  final _RadiusTokens radius;
  final _ShadowTokens shadows;

  const _CustomThemeExtension({
    required this.primaryGradient,
    required this.secondaryGradient,
    required this.accentGradient,
    required this.surfaceGradient,
    required this.spacing,
    required this.radius,
    required this.shadows,
  });

  @override
  _CustomThemeExtension copyWith({
    LinearGradient? primaryGradient,
    LinearGradient? secondaryGradient,
    LinearGradient? accentGradient,
    LinearGradient? surfaceGradient,
    _SpacingTokens? spacing,
    _RadiusTokens? radius,
    _ShadowTokens? shadows,
  }) =>
      _CustomThemeExtension(
        primaryGradient: primaryGradient ?? this.primaryGradient,
        secondaryGradient: secondaryGradient ?? this.secondaryGradient,
        accentGradient: accentGradient ?? this.accentGradient,
        surfaceGradient: surfaceGradient ?? this.surfaceGradient,
        spacing: spacing ?? this.spacing,
        radius: radius ?? this.radius,
        shadows: shadows ?? this.shadows,
      );

  @override
  _CustomThemeExtension lerp(ThemeExtension<_CustomThemeExtension>? other, double t) {
    if (other is! _CustomThemeExtension) return this;
    return _CustomThemeExtension(
      primaryGradient: _lerpGradient(primaryGradient, other.primaryGradient, t),
      secondaryGradient: _lerpGradient(secondaryGradient, other.secondaryGradient, t),
      accentGradient: _lerpGradient(accentGradient, other.accentGradient, t),
      surfaceGradient: _lerpGradient(surfaceGradient, other.surfaceGradient, t),
      spacing: spacing,
      radius: radius,
      shadows: shadows,
    );
  }

  LinearGradient _lerpGradient(LinearGradient a, LinearGradient b, double t) {
    return LinearGradient(
      colors: List.generate(
        a.colors.length,
        (i) => Color.lerp(a.colors[i], b.colors[i], t)!,
      ),
      begin: a.begin,
      end: a.end,
    );
  }
}

class _SpacingTokens {
  const _SpacingTokens();
  double get xs => AppSpacing.xs;
  double get sm => AppSpacing.sm;
  double get md => AppSpacing.md;
  double get lg => AppSpacing.lg;
  double get xl => AppSpacing.xl;
  double get xxl => AppSpacing.xxl;
  double get xxxl => AppSpacing.xxxl;
  double get huge => AppSpacing.huge;
  double get massive => AppSpacing.massive;
}

class _RadiusTokens {
  const _RadiusTokens();
  double get none => AppRadius.none;
  double get xs => AppRadius.xs;
  double get sm => AppRadius.sm;
  double get md => AppRadius.md;
  double get lg => AppRadius.lg;
  double get xl => AppRadius.xl;
  double get xxl => AppRadius.xxl;
  double get xxxl => AppRadius.xxxl;
  double get round => AppRadius.round;
}

class _ShadowTokens {
  final bool isDark;
  const _ShadowTokens({required this.isDark});

  List<BoxShadow> get xs => isDark ? AppShadows.darkXs : AppShadows.lightXs;
  List<BoxShadow> get sm => isDark ? AppShadows.darkSm : AppShadows.lightSm;
  List<BoxShadow> get md => isDark ? AppShadows.darkMd : AppShadows.lightMd;
  List<BoxShadow> get lg => isDark ? AppShadows.darkLg : AppShadows.lightLg;
  List<BoxShadow> get xl => isDark ? AppShadows.darkXl : AppShadows.lightXl;
  List<BoxShadow> primaryGlow({double intensity = 0.3}) => AppShadows.primaryGlow(intensity: intensity);
  List<BoxShadow> accentGlow({double intensity = 0.3}) => AppShadows.accentGlow(intensity: intensity);
  List<BoxShadow> errorGlow({double intensity = 0.3}) => AppShadows.errorGlow(intensity: intensity);
}

extension AppThemeExtension on BuildContext {
  _CustomThemeExtension get customTheme => Theme.of(this).extension<_CustomThemeExtension>()!;
  _SpacingTokens get spacing => customTheme.spacing;
  _RadiusTokens get radius => customTheme.radius;
  _ShadowTokens get shadows => customTheme.shadows;
  LinearGradient get primaryGradient => customTheme.primaryGradient;
  LinearGradient get secondaryGradient => customTheme.secondaryGradient;
  LinearGradient get accentGradient => customTheme.accentGradient;
  LinearGradient get surfaceGradient => customTheme.surfaceGradient;
}