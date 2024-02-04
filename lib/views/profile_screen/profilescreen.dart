import 'package:get/get.dart';
import 'package:wytale_seller/views/profile_screen/messages_screen.dart';
import 'package:wytale_seller/views/profile_screen/shop_settings_screen.dart';

import '../../const/const.dart';
import 'edit_profilescreen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Account",style: TextStyle(fontFamily:bold,fontWeight:FontWeight.bold,fontSize: 20.0,color:Colors.black)),
        actions: [
          IconButton(onPressed: (){
            Get.to (()=> const EditProfileScreen());
          },
              icon: const Icon(Icons.edit,color: Colors.black,)),
          TextButton(onPressed: (){}, child: const Text("Logout",style: TextStyle(color: Colors.black),))
        ],
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Image.asset("assets/product.jpg",).box.roundedFull.clip(Clip.antiAlias).make(),
              title: const Text("Vender Name", style: TextStyle(fontWeight: FontWeight.bold,fontFamily: bold,color: Colors.black),),
              subtitle: const Text("9876543210", style: TextStyle(fontWeight: FontWeight.w300,fontFamily: bold,color: Colors.black),),
            ),

            10.heightBox,
            Divider(color: Colors.transparent,),
            "   Account Settings".text.bold.size(16).make(),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(

                children: List.generate(profileButtonsIcons.length, (index) => ListTile(
                  onTap: (){
                    switch(index){
                      case 0:
                        Get.to(()=> const ShopSettings());
                        break;
                      case 1:
                        Get.to(()=> const MessagesScreen());
                        break;
                      default:
                    }
                  },
                  leading: Icon(profileButtonsIcons[index],color: Colors.black,size: 40,),
                  title: Text(profileButtonsTitles[index], style: const TextStyle(fontFamily: bold,fontWeight: FontWeight.bold,color: Colors.black),),
                  subtitle: Text(profileButtonsSubTitles[index]),

                )),
              ),
            ),
          ],
      ),
    );
  }
}
