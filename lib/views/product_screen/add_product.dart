import 'package:wytale_seller/views/product_screen/product_Image.dart';
import 'package:wytale_seller/views/product_screen/product_dropdown.dart';
import 'package:wytale_seller/views/product_screen/slider.dart';
import 'package:wytale_seller/widget_common/custom_text_field.dart';

import '../../const/const.dart';



class AddProduct extends StatelessWidget {
  const AddProduct({super.key});



  @override
  Widget build(BuildContext context) {
    TextEditingController producttitleTextEditingController = TextEditingController();
    TextEditingController productIdTextEditingController = TextEditingController();
    TextEditingController priceTextEditingController = TextEditingController();
    TextEditingController quantityTextEditingController = TextEditingController();

    return Scaffold(
      // backgroundColor: Colors.black,black
      appBar: AppBar(
        title: "Add Product".text.fontWeight(FontWeight.bold).size(20).fontFamily(bold).make(),
        actions: [TextButton(onPressed: (){}, child: "ADD".text.bold.color(Colors.black).make())],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             CustomTextField(
               editingController: producttitleTextEditingController,
               labelText: "Product Title",
               iconData: Icons.shopping_bag,
               isobscure: false,),
              10.heightBox,
              CustomTextField(
                editingController: productIdTextEditingController,
                labelText: "Product Id",
                iconData: Icons.numbers,
                isobscure: false,),
              10.heightBox,
              CustomTextField(
                editingController: priceTextEditingController,
                labelText: "Price",
                iconData: Icons.currency_rupee,
                isobscure: false,),
              10.heightBox,
              CustomTextField(
                editingController: quantityTextEditingController,
                labelText: "Quantity",
                iconData: Icons.format_list_numbered,
                isobscure: false,),
              10.heightBox,
              "Upload Images".text.bold.make(),
              5.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(3, (index) => productImages("$index+1")),
              ),
              5.heightBox,
              "* First image will be your display image".text.color(fontGrey).make(),
              10.heightBox,
              SizedBox(
                  child: productDropdown()).box.border(color: Colors.black12).rounded.make(),
              10.heightBox,SizedBox(
                  child: productDropdown2()).box.border(color: Colors.black12).rounded.make(),
              10.heightBox,
              // productDropdown("Sub- Category"),
          const TextField(
            minLines: 5,
            maxLines: 20, // You can adjust the number of lines as needed
            decoration: InputDecoration(
              hintText: 'Enter Product description here',
              border: OutlineInputBorder(),
            ),).box.rounded.white.border(color: Colors.black38).make(),
              // ElevatedButton(
              //   onPressed: () {
              //     // Add your logic for handling the addition of the product here
              //   },
              //   child: Text('ADD PRODUCT'),
              // ),
            ],
          ),
        ),
      ),

    );
  }
}
