import 'package:get/get.dart';
import 'package:wytale_seller/views/order_screen/orderdetails.dart';

import '../../const/const.dart';
import "package:intl/intl.dart" ;
class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(automaticallyImplyLeading: false,
        title: const Text("Orders",
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
              children: List.generate(
                20,
                    (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: ListTile(
                    onTap: () {
                      Get.to(()=>const OrderDetails());
                      // Add your tap handler logic here
                    },
                    tileColor: textfieldGrey,
                    title: const Text(
                      "324587392183928",
                      style: TextStyle(
                        color: fontGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    subtitle: Column(
                      children: [
                        Row(
                          children: [
                           const Icon(Icons.calendar_month,color:darkGrey),
                            10.widthBox,
                            Text( formattedDate,style: const TextStyle(fontWeight: FontWeight.bold,color: fontGrey) ,),
                              
                          ],

                        ),
                        Row(
                          children: [
                            const Icon(Icons.payment,color:darkGrey),
                            10.widthBox,
                            const Text( "Unpaid",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red) ,),

                          ],

                        ),
                      ],
                    ),
                    trailing: const Text("\$40.0",style: TextStyle(fontWeight: FontWeight.bold,color: fontGrey,fontSize: 20),),
                  ),
                ),
              ),

            ),
            )
        ),
      );

  }
}
DateTime now = DateTime.now();
String formattedDate = DateFormat('yyyy-MM-dd').format(now);
