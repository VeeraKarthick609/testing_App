import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(70)),
        height: 60,
        width: 60,
        child: Image.network(
            "https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png"),
      ),
    );
  }
}
