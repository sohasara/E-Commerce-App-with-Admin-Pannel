import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: Column(
        children: [
          const SizedBox(
            height: 13,
          ),
          Center(
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.purple[300],
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                Icons.person_3_rounded,
                size: 100,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            "Nadia Islam Rupa",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "sohasara@gamil.com",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          Container(
            height: 450,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70),
                topRight: Radius.circular(70),
              ),
            ),
            child: Column(
              children: [
                Text("data"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
