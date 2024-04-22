import '../../app_element/header.dart';

class ListTingWidget extends StatelessWidget {
  const ListTingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(width: 15,height: 50,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(10) ),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text("Today's",style: titleMedium),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("Flash Sales",style: titleLarge),
            ),
          ],
        ),
        SizedBox(
          height: 25.h,
          child: ListView.builder( 
            scrollDirection: Axis.horizontal,
            itemCount: 10,itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(width:25.h,
              decoration:BoxDecoration(
                  color: Colors.red,
                image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeSDeOq3c9cjG01mI3McWzMNrPvN7JzafuILGohqt6SQ&s"),fit: BoxFit.fill)
              ),),
            );
          },),
        )
      ],
    );
  }
}
