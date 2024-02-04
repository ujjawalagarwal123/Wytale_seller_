import 'package:get/get.dart';
import 'package:wytale_seller/views/product_screen/add_product.dart';

import 'package:wytale_seller/views/product_screen/product_detail.dart';

import '../../const/const.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor:Colors.blue,
        onPressed: () {     Get.to(()=>AddProduct());},
        child: const Icon(Icons.add),
      ),
        appBar:AppBar(automaticallyImplyLeading: false,
        title: const Text("Products",
        style: TextStyle(fontFamily: bold,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: fontGrey)
    ),
        ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(20, (index) => ListTile(onTap: (){
              Get.to(()=>ProductDetails());
            },
              leading: Image.asset("assets/product.jpg",width: 100,height: 100,fit:BoxFit.cover,),
              title: const Text("Product Title",style: TextStyle(color: fontGrey,fontWeight:FontWeight.bold),),
              subtitle: Row(
                children: [
                  const Text("\$40.0", style: TextStyle(color: darkGrey)),
                  10.widthBox,
                  "Featured".text.color(Colors.green).make(),
                ],
              ),
              trailing: VxPopupMenu(
                  arrowSize:0.0,
                  menuBuilder: ()=>Column(
                  children: List.generate(popupMenuTitles.length,
                          (index) => Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                                children: [
                                Icon(popupMenuIcons[index]),
                                5.widthBox,
                                Text(popupMenuTitles[index],style: TextStyle(color: darkGrey,fontFamily:regular),)
                                              ]
                                            ).onTap(() {}),
                          )),
              ).box.white.width(200).make(), clickType: VxClickType.singleClick,
                  child: const Icon(Icons.more_vert_rounded)),
              
            )
            ),
          )
          ),
        ),

      );
  }
}
