import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../app_element/header.dart';
class AppBanner extends StatefulWidget {
  final List bannerList ;

  const AppBanner({super.key, required this.bannerList});

  @override
  State<AppBanner> createState() => _AppBannerState();
}

class _AppBannerState extends State<AppBanner> with TickerProviderStateMixin{
  final _carouselController = CarouselController();

  int _current = 0;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
      ),
      child: Column(
        children: [
          CarouselSlider(
            carouselController: _carouselController,
            options: CarouselOptions(
                viewportFraction: 1,
                enlargeCenterPage: true,
                autoPlay: true,
                // enlargeCenterPage: true,
                height: MediaQuery.of(context).size.height * 0.50,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            items: widget.bannerList.asMap().entries.map((i) {
              // print("image url=============${i.image}");
              return Builder(
                builder: (BuildContext context) {
                  return InkWell(
                    onTap: () {

                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,

                      // height: MediaQuery.of(context).size.height * 0.9,
                      margin: const EdgeInsets.symmetric(horizontal: 0.0),
                  color: Colors.orange,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child:  Image.network(
                         "${widget.bannerList[i.key]}",
                          fit: BoxFit.fill,
                        )
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: 10,
          ),
          buildPage(),
        ],
      ),
    );
  }
  Widget buildPage() => AnimatedSmoothIndicator(
    activeIndex: _current,
    count: widget.bannerList.length,
    effect: ExpandingDotsEffect(
        spacing: MediaQuery.of(context).size.width * 0.021,
        dotWidth: MediaQuery.of(context).size.width * 0.05,
        dotHeight: MediaQuery.of(context).size.height * 0.008,
        dotColor: Colors.grey,
        activeDotColor: Colors.orange),
  );
}
