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
              Text("Exclusive", style: titleLarge),
              const Spacer(),
              horizantalSize(8),
              SizedBox(
                width: 50.w,
                height: 5.h,
                child: Center(
                  child: TextField(
                    cursorColor: black,
                    style:titleMedium,
                    decoration: InputDecoration(
                      suffixIcon: Icon(size: 10.sp,
                        Icons.search,
                        color: black,
                      ),
                      hintText: "What are you looking for?",hintStyle: titleMedium,
                       contentPadding: EdgeInsets.only(bottom: 0.5.w, left: 2.w),
                      filled: true,
                      fillColor: gray1,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.sp)),
                    ),
                  ),
                ),
              ),
              horizantalSize(8),
              Icon(Icons.favorite_border,size: 15.sp,),
              horizantalSize(8),
              Icon(Icons.shopping_cart_outlined,size: 15.sp),
            ]:[
              Text("Exclusive", style: titleMedium),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Home",style: titleSmall),
              ),
              horizantalSize(12),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Contact",style: titleSmall),
              ),
              horizantalSize(12),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("About",style: titleSmall),
              ),
              horizantalSize(12),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Sign Up",style: titleSmall),
              ),
              const Spacer(),
              horizantalSize(12),
              SizedBox(
                width: 30.w,
                height: 7.h,
                child: TextField(
                  cursorColor: black,style: titleSmall,
                  decoration: InputDecoration(
                    suffixIcon: Icon(size: 5.sp,
                      Icons.search,
                      color: black,
                    ),
                    hintText: "What are you looking for?",hintStyle: titleSmall,
                    contentPadding: EdgeInsets.only(left: 1.w,bottom: 10),
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
