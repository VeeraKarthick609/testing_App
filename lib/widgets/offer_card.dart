import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  String off1;
  String off2;
  Color? color;
  OfferCard(
      {super.key,
      required this.off1,
      required this.off2,
      this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 180,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(off1,
            style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w800)),
        const SizedBox(
          height: 8,
        ),
        Text(off2,
            style: const TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w800))
      ]),
    );
  }
}
