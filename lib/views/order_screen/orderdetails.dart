


import 'package:wytale_seller/const/const.dart';
import 'package:wytale_seller/views/order_screen/order_place.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        title: const Text("Order Details",style:TextStyle(fontFamily: bold,fontWeight: FontWeight.bold,color: fontGrey,fontSize: 20) ,),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.zero, // Set border radius to zero
              ),
            ),
            minimumSize: MaterialStateProperty.all<Size>(
              Size(MediaQuery.of(context).size.width, 60), // Set minimum size to cover full width
            ),
            backgroundColor: MaterialStateProperty.all<Color>(green),
          ),
          onPressed: () {},
          child: Text("Confirm Order", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 22.0),),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Visibility(
                // visible: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Order Status:",style: TextStyle(color: fontGrey,fontSize:18.0,fontWeight: FontWeight.bold,fontFamily: bold),),
                    SwitchListTile(
                      activeColor:green,
                      value: true,
                      onChanged: (value){},
                      title: Text("Confirmed",style: TextStyle(fontFamily: bold,fontWeight: FontWeight.bold,color: fontGrey),),),
                    SwitchListTile(
                        activeColor:green,
                        value: true,
                        onChanged: (value){},
                        title: Text("Placed",style: TextStyle(fontFamily: bold,fontWeight: FontWeight.bold,color: fontGrey),),),
                    SwitchListTile(
                        activeColor:green,
                        value: true,
                        onChanged: (value){},
                        title: Text("Out for Delivery",style: TextStyle(fontFamily: bold,fontWeight: FontWeight.bold,color: fontGrey),),),
                    SwitchListTile(
                        activeColor:green,
                        value: true,
                        onChanged: (value){},
                        title: Text("Delivered",style: TextStyle(fontFamily: bold,fontWeight: FontWeight.bold,color: fontGrey),),),
                    ],
                ),
              ),
              Column(
                children: [
                  orderPlaceDetails(
                    d1:"data['order code']",
                    d2:"data['shipping_method']",
                    title1: "Order Code",
                    title2: "Shipping Method"
                  ),
                  orderPlaceDetails(
                    d1:"d['order code']",
                    d2:"data['payment_method']",
                    title1: "Order Date",
                    title2: "Payment Method"
                  ),
                  orderPlaceDetails(
                    d1:"Unpaid",
                    d2:"Order Placed",
                    title1: "Payment Status",
                    title2: "Order Status"
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column( mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Shipping Address".text.fontFamily(bold).make(),
                            "{data['order_by_name']}".text.make(),
                            "{data['order_by_email']}".text.make(),
                            "{data['order_by_address']}".text.make(),
                            "{data['order_by_city']}".text.make(),
                            "{data['order_by_state']}".text.make(),
                            "{data['order_by_phone']}".text.make(),
                            "{data['order_by_pincode']}".text.make()
                          ],
                        ),
                        const SizedBox(
                          width: 130,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Total Amount"),
                              Text("\$40"),
                              // "Total Amount".text.fontFamily(semibold).make(),
                              // "${data['total_amount']}".text.color(Colors.black).fontFamily(bold).make(),
                            ],
                          ),
                        )
                      ],
                    ),
                  // ).box.outerShadowMd.white.make(),

                  )
                ],
              ).box.outerShadowMd.white.make(),

              10.heightBox,
              Text("Ordered Product",style: TextStyle(fontWeight: FontWeight.bold),),
              10.heightBox,
              ListView(

                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(3, (index) => ListTile(
                  onTap: () {},
                  leading: Image.asset("assets/product.jpg", width: 100, height: 100, fit: BoxFit.cover).box.make(),
                  title: const Text("Product Title", style: TextStyle(color: fontGrey, fontWeight: FontWeight.bold)),
                  subtitle: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Qunatity: ", style: TextStyle(color: darkGrey)),
                      const Text("4", style: TextStyle(color: darkGrey)),
                    ],
                  ),
                  trailing: Text("\$ 40.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


