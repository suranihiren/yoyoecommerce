import '../../app_element/header.dart';

class ListTingWidget extends StatelessWidget {
  const ListTingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(width: 15,height: 50,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(10) ),),
            Text("Today's",style: titleMedium),
          ],
        ),
        SizedBox(
          height: 25.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.red,width:25.h,),
            );
          },),
        )
      ],
    );
  }
}
