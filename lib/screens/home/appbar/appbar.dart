import 'package:flutter/material.dart';
import '/screens/home/appbar/location.dart';
import '/screens/home/appbar/profile.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Location(
            addressName: "Home",
            address: "U-Block, Gurgaon",
          ),
          const Profile()
        ],
      ),
    );
  }
}
