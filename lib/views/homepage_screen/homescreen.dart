import 'package:wytale_seller/widget_common/dashboard_button.dart';

import '../../const/const.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(automaticallyImplyLeading: false,
          title: const Text(dashboard,
          style: TextStyle(fontFamily: bold,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: fontGrey)
      ),
        // actions: [Text(intl.DateFormat (EEE, MMM d, ' 'yy'). format (DateTime.now()),],),

    ), body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              dashboardButton(context, title:"Product",count: "24",icon: "assets/icons/products.png"),
              dashboardButton(context, title:"Orders",count: "24",icon: "assets/icons/orders.png"),
            ],),
            10.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            dashboardButton(context, title:"Ratings",count: "24",icon: "assets/icons/star.png"),
            dashboardButton(context, title:"Sales",count: "24",icon: "assets/icons/products.png"),
          ],),
            10.heightBox,
            const Divider(),
            10.heightBox,
            const Text("Popular Product", // Replace 'Title' with your actual title variable
              style: TextStyle(fontSize: 16.0, color: fontGrey,fontWeight: FontWeight.bold),
            ),
            20.heightBox,
            ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(10, (index) => ListTile(
                onTap: () {},
                leading: Image.asset("assets/product.jpg", width: 100, height: 100, fit: BoxFit.cover),
                title: const Text("Product Title", style: TextStyle(color: fontGrey, fontWeight: FontWeight.bold)),
                subtitle: const Text("\$40.0", style: TextStyle(color: darkGrey)),
              )),
            ),
        
        
        
          ],
        ),
      ),
      
    ),);

  }
}
