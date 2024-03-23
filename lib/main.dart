import 'package:sizer/sizer.dart';

import 'app_element/app_theme.dart';
import 'app_element/header.dart';

void main() {
  runApp(const MyAppTheme());
}

class MyAppTheme extends StatefulWidget {
  const MyAppTheme({super.key});

  @override
  State<MyAppTheme> createState() => _MyAppThemeState();
}

class _MyAppThemeState extends State<MyAppTheme> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.light,
          theme: AppTheme.lightTheme,
        );
      },
    );
  }
}
