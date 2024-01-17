import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wytale_seller/views/auth_screen/forgetpassword_screen.dart';
import 'package:wytale_seller/views/auth_screen/registration_screen.dart';
import 'package:wytale_seller/views/homepage_screen/homepage_screen.dart';
import 'package:wytale_seller/widget_common/custom_text_field.dart';




class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  bool showProgressBar = false;
  // final _formKey = GlobalKey<FormState>();
  // String email = '';
  // String password = '';

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
                  'Welcome Back!',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20.0),
                //email
                CustomTextField(
                  editingController: emailTextEditingController,
                  labelText: "Email",
                  iconData: Icons.email_outlined,
                  isobscure: false,
                ),
                SizedBox(height: 20.0),

                CustomTextField(
                  editingController: passwordTextEditingController,
                  labelText: "Password",
                  iconData: Icons.lock_outline,
                  isobscure: true,
                ),
                 SizedBox(height: 20.0),
                Container(
                  width: 300,
                  child: ElevatedButton(
                    child:
                    Text('Login'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage(),
                      ));
                      // Validate user input and perform login logic here
                    },

                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the buttons horizontally
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegistrationPage()),
                        );
                      },
                      child: const Text('New User?'),
                    ),
                    const SizedBox(width: 10.0), // Add spacing between buttons
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => forgetpassword()),
                        );
                        // Implement navigation to forgot password page here
                      },
                      child: const Text('Forgot Password?'),
                    ),
                  ],
                ),
              showProgressBar == true
              ? CircularProgressIndicator()
              : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

