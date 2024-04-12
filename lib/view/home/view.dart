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
  List imgUrl =["https://img.freepik.com/free-photo/abstract-autumn-beauty-multi-colored-leaf-vein-pattern-generated-by-ai_188544-9871.jpg","https://www.stockvault.net/data/2020/01/18/272608/thumb16.jpg","https://cdn.pixabay.com/photo/2018/10/05/14/39/sunset-3726030_960_720.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Column(children: [
        AppBanner(bannerList: imgUrl,),
        ListTingWidget()
      ],),

    );
  }
}
