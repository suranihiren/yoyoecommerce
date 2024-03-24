
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
          checkColor: MaterialStateColor.resolveWith((states) => gray3),
          fillColor: MaterialStateColor.resolveWith((states) => themeYellow)),
      dialogBackgroundColor: white,
      textTheme: TextTheme(
          bodyLarge: TextStyle(
              color: gray3, fontSize: 18.sp, fontWeight: FontWeight.w500),
          bodyMedium: TextStyle(
              color: gray3, fontSize: 15.sp, fontWeight: FontWeight.w400),
          bodySmall: TextStyle(
              color: gray3, fontSize: 13.sp, fontWeight: FontWeight.w400),
          titleLarge: TextStyle(
              color: gray3, fontSize: 20.sp, fontWeight: FontWeight.w600)),
      splashColor: gray1,
      snackBarTheme: SnackBarThemeData(
          backgroundColor: gray3,
          closeIconColor: white,
          showCloseIcon: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(color: darkYellow, width: 1))),
      scaffoldBackgroundColor: white);
}
