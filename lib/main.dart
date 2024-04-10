import 'package:responsive_builder/responsive_builder.dart';
import 'package:yoyoecommerce/view/home/view.dart';

import 'app_element/header.dart';

void main() {
  runApp(MyAppTheme());
}

class MyAppTheme extends StatefulWidget {
  const MyAppTheme({super.key});

  @override
  State<MyAppTheme> createState() => _MyAppThemeState();
}

class _MyAppThemeState extends State<MyAppTheme> {
  @override
  Widget build(BuildContext context) {
    bgColor = Theme.of(context).backgroundColor;
    fontColor = Theme.of(context).textTheme.titleLarge!.color;
    bodyLarge = Theme.of(context).textTheme.bodyLarge;
    bodyMedium = Theme.of(context).textTheme.bodyMedium;
    bodySmall = Theme.of(context).textTheme.bodySmall;
    titleLarge = Theme.of(context).textTheme.titleLarge;
    titleMedium = Theme.of(context).textTheme.titleMedium;
    titleSmall = Theme.of(context).textTheme.titleSmall;
    return Sizer(
      builder: (context, orientation, deviceType) {
        return ResponsiveApp(builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.light,
            theme: AppTheme.lightTheme,
            home: ResponsiveBuilder(builder: (context, sizingInformation) {
              if(sizingInformation.deviceScreenType == DeviceScreenType.mobile)
                {
                  isMobile=true;
                }
              else
                {
                  isMobile=false;
                }
              return HomeScreen();
            },),
          );
        });
      },
    );
  }
}
