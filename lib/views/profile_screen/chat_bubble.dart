 import '../../const/const.dart';

Widget chatBubble(){
  return Directionality(
      // textDirection: date['uid']==currentUser!.uid ? TextDirection.rtl : TextDirection.ltr,
    textDirection: TextDirection.ltr,
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          // color: data['uid']==currentUser!.uid ? redColor: darkfontGrey,
          color: darkGrey,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20)
          )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // "${data['msg']}".text.white.size(16).make(),
            Text("your message here......"),
            10.heightBox,
            // time.text.color(Colors.white.withOpacity(0.5)).make()
            Text("10:45 AM")
          ],
        ),
      )
  );
}