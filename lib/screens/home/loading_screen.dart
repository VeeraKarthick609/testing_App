import 'package:easy_separator/easy_separator.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});
  static Color fillColor = Colors.grey.withOpacity(0.2);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var profileHolder = Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: fillColor),
      height: 30,
      width: 30,
    );
    var line1 = Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: fillColor),
      height: 16,
      width: width / 4,
    );
    var line2 = Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4), color: fillColor),
      height: 14,
    );
    var holderBoxSquare = Container(
      margin: const EdgeInsets.all(8),
      height: 72,
      width: 72,
      decoration: BoxDecoration(
          color: fillColor, borderRadius: BorderRadius.circular(4)),
    );
    var holderBoxRectangle = Container(
      margin: const EdgeInsets.all(8),
      height: 144,
      decoration: BoxDecoration(
          color: fillColor, borderRadius: BorderRadius.circular(4)),
    );
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Shimmer.fromColors(
              baseColor: Colors.grey,
              highlightColor: Colors.blueGrey.withOpacity(0.3),
              child: EasySeparatedColumn(
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
                children: [
                  Row(
                    children: [
                      profileHolder,
                      const SizedBox(
                        width: 12,
                      ),
                      line1
                    ],
                  ),
                  line2,
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return holderBoxSquare;
                    },
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return holderBoxRectangle;
                          }))
                ],
              ))),
    );
  }
}
