
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
import 'package:wytale_seller/views/homepage_screen/homescreen.dart';
import 'package:wytale_seller/views/order_screen/orderscreen.dart';
import 'package:wytale_seller/views/product_screen/productscreen.dart';
import 'package:wytale_seller/views/profile_screen/profilescreen.dart';

import '../../const/const.dart';

class Home extends StatelessWidget {
  const Home({super.key});



  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navScreen=[
      const HomeScreen(),
      const ProductScreen(),
      const OrderScreen(),
      const ProfileScreen()
    ];

    var bottomNavBar =[ 
      const BottomNavigationBarItem(icon: Icon(Icons.home),label: dashboard),
      BottomNavigationBarItem(icon: Image.asset('assets/icons/products.png',color: darkGrey,width: 24,),label: "product"),
      BottomNavigationBarItem(icon: Image.asset('assets/icons/orders.png',color: darkGrey,width: 24,), label: "Orders"),
      BottomNavigationBarItem(icon: Icon(Icons.person,color: darkGrey), label: "Profile")
    ];
    return Scaffold(
    bottomNavigationBar: Obx(()=> BottomNavigationBar(
      onTap: (index){
        controller. navIndex. value = index;
      },
      currentIndex: controller.navIndex.value,
        type: BottomNavigationBarType.fixed,
        items: bottomNavBar,
        selectedItemColor: purpleColor,
        unselectedItemColor: darkGrey,
      ),
    ),
    body: Obx(()=> Column( children: [
      Expanded (
        child: navScreen.elementAt(controller.navIndex.value),)
      ]
      ),
    )
    );

  }
}

class HomeController  extends GetxController{
  var navIndex=0.obs;
}
