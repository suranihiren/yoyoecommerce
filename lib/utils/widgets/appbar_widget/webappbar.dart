import 'package:provider/provider.dart';
import 'package:yoyoecommerce/utils/widgets/text_field_widget.dart';
import 'package:yoyoecommerce/view/home/provider.dart';

import '../../../app_element/header.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var homeProvider = Provider.of<HomeProvider>(context, listen: false);
    return Padding(
      padding:EdgeInsets.all(4.w),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            child: SizedBox( height: 2.5.w,child: text(text:"Exclusive",style: bodyText20wBold(color: black) )),
          ),
          Flexible(
            child: SizedBox(
                height: 2.5.w,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,

                  itemCount: homeProvider.myTabBar.length,
                  itemBuilder: (context, index) => SizedBox(
                      width: 100,
                      height: 50,
                      child:text(text: homeProvider.myTabBar[index],style: bodyText20normal(color: black))),
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.8.w),
            child: SizedBox(width: 25.w,
              height: 2.5.w,
              child: TextField(
                cursorColor: black,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search,color: black,),
                  hintText:"What are you looking for?",
                  contentPadding: EdgeInsets.only(bottom: 0.5.w,left: 1.w),
                  filled: true,
                  fillColor: gray1,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
              ),
            ),
          ),Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.5.w),
            child: IconButton(onPressed: () {

            }, icon: Icon(Icons.favorite_border)),
          ),
          IconButton(onPressed: () {

          }, icon: Icon(Icons.shopping_cart_outlined))

        ],
      ),
    );
  }
}
