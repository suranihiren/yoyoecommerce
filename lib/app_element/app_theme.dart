import 'package:yoyoecommerce/app_element/header.dart';


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
              color: black, fontSize: 15.sp, fontWeight: FontWeight.w500),
          bodyMedium: TextStyle(
              color: black, fontSize: 10.sp, fontWeight: FontWeight.w500),
          bodySmall: TextStyle(
              color: black, fontSize: 10.sp, fontWeight: FontWeight.w500),
          titleLarge: TextStyle(
              color: black, fontSize: 8.sp, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(
              color: black, fontSize: 5.sp, fontWeight: FontWeight.bold),
          titleSmall: TextStyle(
              color: black, fontSize: 3.sp, fontWeight: FontWeight.w600)),
      splashColor: gray1,
      scaffoldBackgroundColor: white);
}
