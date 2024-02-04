import 'package:get/get.dart';

import '../../const/const.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Order Details",style:TextStyle(fontFamily: bold,fontWeight: FontWeight.bold,color: fontGrey,fontSize: 20) ,),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            VxSwiper.builder(
                autoPlay: true,
                height: 350,
                itemCount: 3,
                aspectRatio: 16/9,
                viewportFraction: 1.0,
                itemBuilder:(context, index){
                  return Image.asset(
                    "assets/product.jpg",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Product Title",style: TextStyle(fontFamily: bold,fontWeight: FontWeight.bold,fontSize: 26,),),
                  
                  Row(
                    children: [
                      "Category".text.color(fontGrey).make(),
                      10.widthBox,
                      "Sub-Category".text.color(fontGrey).make(),
                    ],
                  ),



                  VxRating(
                      isSelectable: false,
                      // value: double.parse(data['p_rating']),
                      value: 3.0,
                      onRatingUpdate: (value){},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      count: 5,
                      maxRating: 5,
                      size: 25,
                  ),
                  5.heightBox,
                  const Text("\$ 40.00",style: TextStyle(fontSize:16,fontWeight:FontWeight.bold,color: red),),
                  10.heightBox,],),


                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Quantity: ".text.fontWeight(FontWeight.bold).fontFamily(bold).size(16).make(),
                          ),
                          "20 items".text.fontWeight(FontWeight.bold).make(),
                        ],
                      ).box.padding(EdgeInsets.all(0)).make()


                ],
              ).box.padding(EdgeInsets.symmetric(horizontal: 4)).make(),
            ),
            // title!.text.size(16).color(darkFontGrey).fontFamily(semibold).make(),

            const Divider(
              color:Colors.transparent,
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Description".text.fontFamily(bold).size(16).fontWeight(FontWeight.bold).make(),
                  10.heightBox,
                  "Description of this item".text.fontFamily(regular).make(),
                ],
              ),
            ).box.padding(EdgeInsets.symmetric(horizontal: 4)).make()



          ],
        ),
      ),
    );
  }
}
