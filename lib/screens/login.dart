// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
export 'login.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.cake_rounded, size: 80, color: Colors.blueGrey),
          const Text(
            'Cakes',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Email')),
          ),
          const TextField(
            decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Password')),
            obscureText: true,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey, // Background color
              ),
              child: const Text('ENTER'),
              onPressed: () => Navigator.pushReplacementNamed(context, '/lista'),
            ),
          ),
        ],
      ),
    );
  }
}
