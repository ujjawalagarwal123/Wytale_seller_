import '../const/const.dart';

Widget dashboardButton(context, {title, count,icon}) {
var size = MediaQuery. of (context). size;
return Column(
  mainAxisAlignment: MainAxisAlignment.center,
    children: [
         Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image. asset (icon, width: 50, color: white),10.widthBox,
               Text(
                  title, // Replace 'Title' with your actual title variable
                  style: const TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold, color: Colors.white),
                ),

          ],
        ),

      Text(
        count, // Replace 'Count' with your actual count variable
        style: const TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold,color: Colors.white),
      ),

]
)
    .box
    .color(Vx.randomPrimaryColor)
    .rounded.size(size.width * 0.45,size.width*0.45)
    .padding(const EdgeInsets.all(8))
    .make();}
