import 'package:flutter/cupertino.dart';
import 'package:yoyoecommerce/utils/banner/appbanner.dart';
import 'package:yoyoecommerce/utils/widgets/list_ting_widget.dart';

import '../../app_element/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List imgUrl =["https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6rzSV_YDD9CxA5_X8uw6USZ_0h243oQWUzg&s","https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqOAKUP7otiW9IWmflNHSqDUTkOxRJfWHAhA&s","https://mixkit.imgix.net/static/OG-meta/video.jpg?q=80&auto=format%2Ccompress"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          AppBanner(bannerList: imgUrl,),
          ListTingWidget()
        ],),
      ),

    );
  }
}
