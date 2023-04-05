import 'package:flutter/material.dart';

class Restaurantbanner extends StatelessWidget {
  const Restaurantbanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(
            Icons.indeterminate_check_box,
            color: Colors.white,
          ),
          Text(
            "Unlike other platforms we don't hike prices!",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
