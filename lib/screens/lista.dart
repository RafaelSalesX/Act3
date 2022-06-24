// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
export 'lista.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Market"),
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(icon: const Icon(Icons.exit_to_app), onPressed: () => Navigator.pushReplacementNamed(context, '/')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.blueGrey,
        onPressed: () => Navigator.pushNamed(context, '/cadastro'),
      ),
      body: ListView.builder(
        itemCount: 11,
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: const Icon(Icons.shopping_basket_outlined),
            title: Text('Cakes $index'),
            trailing: Text('Qtde $index'),
          );
        },
      ),
    );
  }
}
