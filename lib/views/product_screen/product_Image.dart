import 'package:flutter/cupertino.dart';
import 'package:wytale_seller/const/const.dart';

Widget productImages(label){
  return"$label".text.bold.color(fontGrey).makeCentered().box.color(lightGrey).size(100,100).roundedSM.make();
}