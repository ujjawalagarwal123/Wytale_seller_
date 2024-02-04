
import 'package:wytale_seller/const/const.dart';

Widget productDropdown(){
   return DropdownButtonHideUnderline(
       child: DropdownButton
         (
         hint: "Category".text.color(Colors.black).make(),
         value: null,
         items: const [],
         isExpanded: true,
         onChanged: (value){},
       )
   ).box.white.padding(EdgeInsets.symmetric(horizontal: 4)).rounded.make();
}


Widget productDropdown2(){
  return DropdownButtonHideUnderline(
      child: DropdownButton
        (
        hint: "Sub-Category".text.color(Colors.black).make(),
        value: null,
        items: const [],
        isExpanded: true,
        onChanged: (value){},
      )
  ).box.white.padding(EdgeInsets.symmetric(horizontal: 4)).rounded.make();
}