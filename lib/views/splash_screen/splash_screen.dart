// import 'package:wytale/consts/consts.dart';
// import 'package:flutter/material.dart';
// import 'package:wytale/views/auth_screen/login_screen.dart';
//
// import '../../widget_common/applogo_widget.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
//
//   class _SplashScreenState extends State<SplashScreen> {
//   changeScreen() {
//   Navigator.push(
//   context,
//   MaterialPageRoute(builder: (context) => const LoginPage()),
//   );
//   }
//   @override
//   void initState() {
//     super.initState();
//     //Use a Timer to delay the navigation to the login screen
//     Future.delayed(const Duration(seconds: 2), () {
//       changeScreen();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueAccent,
//       body: Center(
//         child: Column(
//           children: [
//             const SizedBox(height: 330),
//             Align(alignment: Alignment.center, child: applogoWidget()),
//             const SizedBox(height: 10),
//             appname.text.fontFamily(bold).size(22).white.make(),
//             const SizedBox(height: 5),
//             appversion.text.white.make(),
//           ],
//         ),
//       ),
//     );
//   }
// }
