
import 'package:yoyoecommerce/view/home/provider.dart';
import 'package:yoyoecommerce/view/home/home_screen';
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
    bgColor=Theme.of(context).backgroundColor;
    bodyLarge=Theme.of(context).textTheme.bodyLarge;
    bodyMedium=Theme.of(context).textTheme.bodyMedium;
    bodySmall=Theme.of(context).textTheme.bodySmall;
    titleLarge=Theme.of(context).textTheme.titleLarge;
    titleMedium=Theme.of(context).textTheme.titleMedium;
    titleSmall=Theme.of(context).textTheme.titleSmall;
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiProvider(providers: [
          ChangeNotifierProvider(create: (context) => HomeProvider(),)
        ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.light,
            theme: AppTheme.lightTheme,

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
