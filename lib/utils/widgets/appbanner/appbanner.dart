import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../app_element/header.dart';
class AppBanner extends StatefulWidget {
  final List bannerList ;

  const AppBanner({super.key, required this.bannerList});

  @override
  State<AppBanner> createState() => _AppBannerState();
}

class _AppBannerState extends State<AppBanner> with TickerProviderStateMixin{
   PageController? pages ;

   int _selectedIndex = 0 ;
   @override
  void initState() {
     pages = PageController(initialPage: 3,viewportFraction: 0.8,);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            onPageChanged: (index) {
                _selectedIndex = index;
            },
            controller:pages ,
            itemCount: 3,itemBuilder: (context, index) {
            return Container(
               margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.amber,
                  image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXa-Cc3DouVXhN8lkzJYjcYKHAwYmhPqYAQA&usqp=CAU"),fit: BoxFit.fill),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
            );
          },),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(bannerList.length, (index) =>   Indicator(isActive: _selectedIndex == index ? true:false))
          ],
        )
      ],
    );
  }
}
class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({super.key,required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      width: isActive?22 : 8.0,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ?Colors.orange :Colors.grey,
        borderRadius: BorderRadius.circular(8)
      ),

    );
  }
}
