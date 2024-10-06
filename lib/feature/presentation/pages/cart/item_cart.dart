import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Item Cart'),
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text('Shoes'),
                  trailing: CircleAvatar(),
                  subtitle: Text('\$45'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
