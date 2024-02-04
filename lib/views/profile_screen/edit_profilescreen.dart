import 'package:wytale_seller/widget_common/custom_text_field.dart';

import '../../const/const.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameTextEditingController = TextEditingController();
    TextEditingController passwordTextEditingController = TextEditingController();
    TextEditingController confirmpasswordTextEditingController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Text("Edit Profile",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold,fontFamily: bold)),
        actions: [TextButton(onPressed: (){}, child: Text("Save",style: TextStyle(fontFamily: regular,color: Colors.white),))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/product.jpg",width: 180,).box.roundedFull.clip(Clip.antiAlias).make(),
              10.heightBox,
              ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.white70,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),)),
                  onPressed: (){},
                  child: Text("Change Image",style: TextStyle(color: darkGrey,fontFamily: regular),)).box.make(),
              10.heightBox,
              const Divider(color: Colors.white, height: 0.3, thickness: 0.2,),
              20.heightBox,
              CustomTextField(editingController: usernameTextEditingController,
                labelText: "Username",
                iconData: Icons.person,
                isobscure: false,),
              10.heightBox,
              CustomTextField(editingController: passwordTextEditingController,
                labelText: "Password",
                iconData: Icons.lock_outline,
                isobscure: true,),
              10.heightBox,
              CustomTextField(editingController: confirmpasswordTextEditingController,
                labelText: "Confirm Password",
                iconData: Icons.lock_outline,
                isobscure: true,),
          
            ],
          ),
        ),
      ),
    );
  }
}
