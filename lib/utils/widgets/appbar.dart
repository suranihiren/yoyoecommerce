import '../../app_element/header.dart';

PreferredSize customAppBar()
{
  return PreferredSize(
    preferredSize: Size.fromHeight(10.h), // Set this height
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h,horizontal: 1.w),
          child: Row(
            children: isMobile==true?[
              Icon(Icons.menu,color: fontColor),
              horizantalSize(8),
              Text("Exclusive", style: titleSmall),
              const Spacer(),
              horizantalSize(8),
              SizedBox(
                width: 35.w,
                height: 5.h,
                child: Center(
                  child: TextField(
                    cursorColor: black,
                    decoration: InputDecoration(
                      suffixIcon: Icon(size: 10.sp,
                        Icons.search,
                        color: black,
                      ),
                      hintText: "What are you looking for?",hintStyle: bodySmall,
                      contentPadding: EdgeInsets.only(bottom: 0.5.w, left: 1.w),
                      filled: true,
                      fillColor: gray1,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(3.sp)),
                    ),
                  ),
                ),
              ),
              horizantalSize(8),
              Icon(Icons.favorite_border,size: 10.sp,),
              horizantalSize(8),
              Icon(Icons.shopping_cart_outlined,size: 10.sp),
            ]:[
              Text("Exclusive", style: titleMedium),
              const Spacer(),
              Text("Home",style: bodySmall),
              horizantalSize(12),
              Text("Contact",style: bodySmall),
              horizantalSize(12),
              Text("About",style: bodySmall),
              horizantalSize(12),
              Text("Sign Up",style: bodySmall),
              const Spacer(),
              horizantalSize(12),
              SizedBox(
                width: 30.w,
                height: 7.h,
                child: TextField(
                  cursorColor: black,
                  decoration: InputDecoration(
                    suffixIcon: Icon(size: 5.sp,
                      Icons.search,
                      color: black,
                    ),
                    hintText: "What are you looking for?",hintStyle: bodySmall,
                    contentPadding: EdgeInsets.only(left: 1.w),
                    filled: true,
                    fillColor: gray1,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(3.sp)),
                  ),
                ),
              ),
              horizantalSize(8),
              Icon(Icons.favorite_border,size: 5.sp),
              horizantalSize(8),
              Icon(Icons.shopping_cart_outlined,size: 5.sp),
            ],
          ),
        ),
        Divider(color: gray2,height: 1,thickness: 1),
      ],
    ),
  );
}