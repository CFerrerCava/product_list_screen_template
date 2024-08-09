import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (_, index) => ListTile(
                title: Text("item $index"),
                subtitle: Text("Estado del item $index"),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                leading: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'second-screen');
                    },
                    icon: Icon(Icons.edit)),
              ),
          itemCount: 5),
    );
  }
}
