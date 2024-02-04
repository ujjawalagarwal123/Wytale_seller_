import 'package:wytale_seller/widget_common/custom_text_field.dart';

import '../../const/const.dart';

class ShopSettings extends StatelessWidget {
  const ShopSettings({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController shopnameTextEditingController = TextEditingController();
    TextEditingController addressTextEditingController = TextEditingController();
    TextEditingController mobileTextEditingController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text("Shop Settings", style: TextStyle(fontSize: 20.0,fontFamily: bold,fontWeight: FontWeight.bold),),
        actions: [TextButton(onPressed: (){}, child: Text("Save",style: TextStyle(fontFamily: regular,color: Colors.white),))],
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                10.heightBox,

                 SizedBox(
                  width: MediaQuery.of(context).size.width* 0.95,
                  child: CustomTextField(
                      editingController: shopnameTextEditingController,
                      labelText: "Shop Name",
                      iconData: Icons.shopping_bag,
                      isobscure: false
                  ),
                ),
                    10.heightBox,
                SizedBox(
                  width: MediaQuery.of(context).size.width* 0.95,
                  child: CustomTextField(editingController: addressTextEditingController,
                      labelText: "Address",
                      iconData: Icons.location_city,
                      isobscure: false),
                ),
                10.heightBox,
                SizedBox(
                  width: MediaQuery.of(context).size.width* 0.95,
                  child: CustomTextField(editingController: mobileTextEditingController,
                      labelText: "Contact No",
                      iconData: Icons.phone,
                      isobscure: false),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
