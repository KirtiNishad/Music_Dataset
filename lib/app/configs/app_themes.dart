import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppThemes {
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color hintColor = Color(0xFF677294);
  static const Color darkYellow = Color(0xFFA77203);
  static const Color borderColor = Color(0x29677294);
  static const Color greyColor = Color(0x993C3C43);
  static const Color greyTextColor = Color(0xff677294);
  static const Color scaffoldColor = Color(0xFFF9FFFF);
  static const Color redColor = Color(0xFFDC4242);
  static const Color greenColor = Color(0xFF0CCB85);
  static const Color dashboardChartdarkBlue = Color(0xFF693B17);
  static const Color dashboardChartlightBlue = Color(0xffF6D060);
  static const Color dashboardChartlightBlue1 = Color(0xFFA77203);
  static const Color dashboardChartlightBlue2 = Color(0xFFDA9608);
  static const Color dashboardChartlightBlue3 = Colors.yellow;
  static const Color dashboardChartverylightBlue2 = Color(0xFFBAC2FF);
  static const Color dashboardChartverylightBlue3 = Color(0xFFDA9608);

  static const Color yellowColor = Color(0xffF6D060);
  static const List<Color> authGradient = [
    Color(0xFF258DE0),
    Color(0xFF00589F),
  ];

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF693B17),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFD4E3FF),
    onPrimaryContainer: Color(0xFF001C39),
    secondary: Color(0xFFDA9608),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFD8E3F8),
    onSecondaryContainer: Color(0xFF111C2B),
    tertiary: Color(0xFF6D5677),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFF6D9FF),
    onTertiaryContainer: Color(0xFF261430),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFDFCFF),
    onBackground: Color(0xFF1A1C1E),
    surface: Color(0xFFFDFCFF),
    onSurface: Color(0xFF1A1C1E),
    surfaceVariant: Color(0xFFDFE2EB),
    onSurfaceVariant: Color(0xFF43474E),
    outline: Color(0xFF73777F),
    onInverseSurface: Color(0xFFF1F0F4),
    inverseSurface: Color(0xFF2F3033),
    inversePrimary: Color(0xFFA4C9FF),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF1560A7),
    outlineVariant: Color(0xFFC3C6CF),
    scrim: Color(0xFF000000),
  );
  static final lightColorScheme2 = ColorScheme(
    brightness: Brightness.light,
    primary: const Color(0xff440f15),
    surfaceTint: const Color(4287580750),
    onPrimary: const Color(4294967295),
    primaryContainer: const Color(4285411123),
    onPrimaryContainer: const Color(4294967295),
    secondary: const Color(4282650389).withOpacity(0.9),
    onSecondary: const Color(4294967295),
    secondaryContainer: const Color(4283972412),
    onSecondaryContainer: const Color(4294967295),
    tertiary: const Color(4281409024),
    onTertiary: const Color(4294967295),
    tertiaryContainer: const Color(4283907606),
    onTertiaryContainer: const Color(4294967295),
    error: const Color(4283301890),
    onError: const Color(4294967295),
    errorContainer: const Color(4287365129),
    onErrorContainer: const Color(4294967295),
    background: const Color(4294965495),
    onBackground: const Color(4280424729),
    surface: const Color(4294965495),
    onSurface: const Color(4278190080),
    surfaceVariant: const Color(4294237661),
    onSurfaceVariant: const Color(4281147681),
    outline: const Color(4283318079),
    outlineVariant: const Color(4283318079),
    shadow: const Color(4278190080),
    scrim: const Color(4278190080),
    inverseSurface: const Color(4281871918),
    inversePrimary: const Color(4294960870),
  );

  static final lightColorScheme3 = ColorScheme(
    brightness: Brightness.light,
    primary: const Color(0xff004c47),
    surfaceTint: const Color(4278217316),
    onPrimary: const Color(4294967295),
    primaryContainer: const Color(4280713594),
    onPrimaryContainer: const Color(4294967295),
    secondary: const Color(4281222981).withOpacity(0.9),
    onSecondary: const Color(4294967295),
    secondaryContainer: const Color(4284512886),
    onSecondaryContainer: const Color(4294967295),
    tertiary: const Color(4281025885),
    onTertiary: const Color(4294967295),
    tertiaryContainer: const Color(4284381074),
    onTertiaryContainer: const Color(4294967295),
    error: const Color(4287365129),
    onError: const Color(4294967295),
    errorContainer: const Color(4292490286),
    onErrorContainer: const Color(4294967295),
    background: const Color(4294245369),
    onBackground: const Color(4279639324),
    surface: const Color(4294245369),
    onSurface: const Color(4279639324),
    surfaceVariant: const Color(4292535778),
    onSurfaceVariant: const Color(4282074435),
    outline: const Color(4283916639),
    outlineVariant: const Color(4285758843),
    shadow: const Color(4278190080),
    scrim: const Color(4278190080),
    inverseSurface: const Color(4281020977),
    inversePrimary: const Color(4286698957),
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFA4C9FF),
    onPrimary: Color(0xFF00315D),
    primaryContainer: Color(0xFF004883),
    onPrimaryContainer: Color(0xFFD4E3FF),
    secondary: Color(0xFFBCC7DB),
    onSecondary: Color(0xFF263141),
    secondaryContainer: Color(0xFF3D4758),
    onSecondaryContainer: Color(0xFFD8E3F8),
    tertiary: Color(0xFFD9BDE3),
    onTertiary: Color(0xFF3D2946),
    tertiaryContainer: Color(0xFF543F5E),
    onTertiaryContainer: Color(0xFFF6D9FF),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF1A1C1E),
    onBackground: Color(0xFFE3E2E6),
    surface: Color(0xFF1A1C1E),
    onSurface: Color(0xFF00589F),
    surfaceVariant: Color(0xFF43474E),
    onSurfaceVariant: Color(0xFFC3C6CF),
    outline: Color(0xFF8D9199),
    onInverseSurface: Color(0xFF1A1C1E),
    inverseSurface: Color(0xFFE3E2E6),
    inversePrimary: Color(0xFF1560A7),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFA4C9FF),
    outlineVariant: Color(0xFF43474E),
    scrim: Color(0xFF000000),
  );

  static final blueColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff002632),
    surfaceTint: Color(4279003008),
    background: Color(4294245369),
    onBackground: Color(4279639324),
    onPrimary: Color(4294967295),
    primaryContainer: Color(4278208861),
    onPrimaryContainer: Color(4294967295),
    secondary: Color(4278199858),
    onSecondary: Color(4294967295),
    secondaryContainer: Color(4278208861),
    onSecondaryContainer: Color(4294967295),
    tertiary: Color(4278199858),
    onTertiary: Color(4294967295),
    tertiaryContainer: Color(4278208861),
    onTertiaryContainer: Color(4294967295),
    error: Color(4283301890),
    onError: Color(4294967295),
    errorContainer: Color(4287365129),
    onErrorContainer: Color(4294967295),
    surface: Color(4294310653),
    onSurface: Color(4278190080),
    onSurfaceVariant: Color(4280100137),
    outline: Color(4282139720),
    outlineVariant: Color(4282139720),
    shadow: Color(4278190080),
    scrim: Color(4278190080),
    inverseSurface: Color(4281086260),
    inversePrimary: Color(4292080127),
  );

  static final greenColorScheme = const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff466730),
    surfaceTint: Color(4282804016),
    onPrimary: Color(4294967295),
    primaryContainer: Color(4291292841),
    onPrimaryContainer: Color(4278853888),
    secondary: Color(4282804016),
    onSecondary: Color(4294967295),
    secondaryContainer: Color(4291292841),
    onSecondaryContainer: Color(4278788352),
    tertiary: Color(4282804016),
    onTertiary: Color(4294967295),
    tertiaryContainer: Color(4291292841),
    onTertiaryContainer: Color(4278853888),
    error: Color(4290386458),
    onError: Color(4294967295),
    errorContainer: Color(4294957782),
    onErrorContainer: Color(4282449922),
    surface: Color(4294507248),
    onSurface: Color(4279835926),
    onSurfaceVariant: Color(4282599486),
    outline: Color(4285823341),
    outlineVariant: Color(4291086523),
    shadow: Color(4278190080),
    scrim: Color(4278190080),
    inverseSurface: Color(4281217322),
    inversePrimary: Color(4289516175),
    background: Color(4294967295),
    onBackground: Color(4279639324),
  );

  static TextTheme textTheme = TextTheme(
    labelSmall: TextStyle(fontSize: 10.5.sp),
    labelMedium: TextStyle(fontSize: 11.5.sp),
    labelLarge: TextStyle(fontSize: 14.sp),
    bodySmall: TextStyle(fontSize: 12.sp),
    bodyMedium: TextStyle(fontSize: 13.5.sp),
    bodyLarge: TextStyle(fontSize: 15.5.sp),
    titleSmall: TextStyle(fontSize: 13.5.sp),
    titleMedium: TextStyle(fontSize: 15.5.sp),
    titleLarge: TextStyle(fontSize: 20.sp),
    headlineSmall: TextStyle(fontSize: 22.sp),
    headlineMedium: TextStyle(fontSize: 26.sp),
    headlineLarge: TextStyle(fontSize: 30.sp),
    displaySmall: TextStyle(fontSize: 34.sp),
    displayMedium: TextStyle(fontSize: 42.sp),
    displayLarge: TextStyle(fontSize: 52.sp),
  );

  static InputDecorationTheme inputDecorationTheme = const InputDecorationTheme(
    hintStyle: TextStyle(
      color: AppThemes.hintColor,
      fontWeight: FontWeight.w300,
    ),
    labelStyle: TextStyle(
      color: AppThemes.hintColor,
    ),
    border: InputBorder.none,
  );

  static OutlinedButtonThemeData outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      minimumSize: Size(double.infinity, 56.h),
      foregroundColor: AppThemes.white,
      textStyle: TextStyle(
        color: AppThemes.white,
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
      ),
      side: BorderSide(
        color: AppThemes.white,
        width: 2.w,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.w),
      ),
    ),
  );
  static TextButtonThemeData textButtonTheme = TextButtonThemeData(
    style: OutlinedButton.styleFrom(
        // foregroundColor: AppThemes.white,
        ),
  );
  static ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppThemes.white,
      backgroundColor: lightColorScheme.primary,
      minimumSize: Size(double.infinity, 56.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
    ),
  );

  static CardThemeData cardTheme = const CardThemeData(
    margin: EdgeInsets.zero,
    surfaceTintColor: AppThemes.white,
    color: AppThemes.white,
  );
  static AppBarTheme appBarTheme = const AppBarTheme(
    backgroundColor: AppThemes.scaffoldColor,
    foregroundColor: AppThemes.black,
  );

  static double getChartColorOpacity(int index) {
    return switch (index) {
      0 => 1,
      1 => 0.8,
      2 => 0.6,
      3 => 0.4,
      4 => 0.2,
      5 => 0.0,
      _ => 1,
    };
  }
}
