import '../../../app_element/header.dart';

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle? title25 =  Theme.of(context).textTheme.titleSmall;
    return Padding(
      padding:EdgeInsets.all(4.w),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            child: SizedBox( height: 2.5.w,child: Text("Exclusive",style:title25)),
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
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.5.w),
            child: IconButton(onPressed: () {

            }, icon: Icon(Icons.favorite_border)),
          ),
          IconButton(onPressed: () {

          }, icon: Icon(Icons.shopping_cart_outlined)),


        ],
      ),
    );
  }
}
