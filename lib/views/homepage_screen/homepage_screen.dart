import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../auth_screen/login_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(

        child:Center(
          child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.25,
          child: ElevatedButton(

            onPressed: () {

              // Implement your logout logic here
              // For example:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              ); // Navigate to login page
            },
            child: Text('Logout'),
          ),
                ),
        ),
    )
    );
  }
}
