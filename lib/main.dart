import 'package:flutter/gestures.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sizer/sizer.dart';
import 'package:yoyoecommerce/view/home/provider.dart';
import 'package:yoyoecommerce/view/home/view.dart';

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
        return MultiProvider(providers: [
          ChangeNotifierProvider(create: (context) => HomeProvider(),)
        ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.light,
            theme: AppTheme.lightTheme,
            scrollBehavior: MyCustomScrollBehavior(),
            builder: (context, child) => ResponsiveBreakpoints.builder(child: child!, breakpoints:
            [
               const Breakpoint(start: 0, end: 450, name: MOBILE),
               const Breakpoint(start: 451, end: 800, name: TABLET),
               const Breakpoint(start: 801, end: 1920, name: DESKTOP),
               const Breakpoint(start: 1921, end: double.infinity, name: '4K'),]
            ),
            home: const HomeScreen(),
          ),
        );
      },
    );
  }
}
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    // etc.
  };
}