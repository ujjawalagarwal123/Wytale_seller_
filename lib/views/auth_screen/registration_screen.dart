import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wytale_seller/widget_common/applogo_widget.dart';

import '../../widget_common/custom_text_field.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController phonenumberTextEditingController = TextEditingController();
  TextEditingController nameTextEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Create a New Account',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20.0),
                CustomTextField(
                  editingController: nameTextEditingController,
                  labelText: "Name",
                  iconData: Icons.account_box,
                  isobscure: false,
                ),
                const SizedBox(height: 20.0),
                CustomTextField(
                  editingController: emailTextEditingController,
                  labelText: "Email",
                  iconData: Icons.email_outlined,
                  isobscure: false,
                ),
                const SizedBox(height: 20.0),
                CustomTextField(
                  editingController: emailTextEditingController,
                  labelText: "Phone Number",
                  iconData: Icons.phone_outlined,
                  isobscure: false,
                ),
                const SizedBox(height: 20.0),
                CustomTextField(
                  editingController: passwordTextEditingController,
                  labelText: "Password",
                  iconData: Icons.lock_outline,
                  isobscure: true,
                ),

                const SizedBox(height: 15.0),

                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // _submitForm();
                  },
                  child: Text('Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}