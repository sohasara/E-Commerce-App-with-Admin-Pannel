import 'package:delivery_app_with_admin_pannel/feature/presentation/widgets/my_text_feild.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyTextF(),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 140,
              width: 370,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.purple,
                  ],
                ),
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            const Text(
              ' Sales',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Container(),
                Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
