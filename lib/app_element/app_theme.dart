import 'package:yoyoecommerce/app_element/header.dart';

Color? bgColor;
TextStyle? bodyLarge;
TextStyle? bodyMedium;
TextStyle? bodySmall;
TextStyle? titleLarge;
TextStyle? titleMedium;
TextStyle? titleSmall;

class AppTheme {
  // static MyAppTheme myAppTheme =MyAppTheme._();
  // MyAppTheme._();
  static ThemeData lightTheme = ThemeData(
      useMaterial3: false,
      appBarTheme:
          AppBarTheme(backgroundColor: white, centerTitle: true, elevation: 1),
      backgroundColor: white,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: white),
      cardColor: white,
      checkboxTheme: CheckboxThemeData(
          checkColor: MaterialStateColor.resolveWith((states) => white),
          fillColor: MaterialStateColor.resolveWith((states) => themeYellow)),
      dialogBackgroundColor: white,
      textTheme: TextTheme(
          bodyLarge: TextStyle(
              color: gray3, fontSize: 10.sp, fontWeight: FontWeight.w500),
          bodyMedium: TextStyle(
              color: gray3, fontSize: 15.sp, fontWeight: FontWeight.w400),
          bodySmall: TextStyle(
              color: gray3, fontSize: 18.sp, fontWeight: FontWeight.w400),
          titleLarge: TextStyle(
              color: black, fontSize: 12.sp, fontWeight: FontWeight.w600),
          titleMedium: TextStyle(
              color: black, fontSize: 16.sp, fontWeight: FontWeight.w600),
          titleSmall: TextStyle(
              color: black, fontSize: 20.sp, fontWeight: FontWeight.w600)),
      splashColor: gray1,
      scaffoldBackgroundColor: white);
}
