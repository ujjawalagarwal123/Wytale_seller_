import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class forgetpassword extends StatefulWidget {
  const forgetpassword({super.key});

  @override
  State<forgetpassword> createState() => _forgetpasswordState();
}

class _forgetpasswordState extends State<forgetpassword> {
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
    )
      ]
    )
    )
        )
        )
    );
  }
}
