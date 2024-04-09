import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yoyoecommerce/utils/widgets/appbanner/appbanner.dart';
import 'package:yoyoecommerce/utils/widgets/appbar_widget/webappbar.dart';
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
    // var homeProvider = Provider.of<HomeProvider>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          WebAppBar(),
          Container(
            color: Colors.orange,
            height: 300,
            width: 500,
            child: AppBanner(bannerList: imgUrl,),
          )
        ],
      ),
    );
  }
}
