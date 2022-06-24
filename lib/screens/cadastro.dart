// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
export 'cadastro.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Product '),
        backgroundColor: Colors.blueGrey,
        actions: [
          TextButton(
            child: const Text(
              'Save',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: Column(children: const [
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            label: Text('Product'),
          ),
        ),
        TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: UnderlineInputBorder(),
            label: Text("The amount"),
          ),
        ),
      ]),
    );
  }
}
