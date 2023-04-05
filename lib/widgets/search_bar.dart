import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/screens/home/home_screen.dart';

class SearchBar extends StatelessWidget {
  bool isBack;
  String text;
  SearchBar({super.key, required this.isBack, required this.text});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
                /* prefix: IconButton(
                    onPressed: () {
                      Get.to(HomeScreen());
                    },
                    icon:const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 12,
                    )) */
                prefixIcon: isBack
                    ? IconButton(
                        onPressed: () {
                          Get.to(HomeScreen());
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                        ))
                    : null,
                border: InputBorder.none,
                hintText: text,
                hintStyle: TextStyle(
                    fontSize: 14, color: Colors.grey.withOpacity(0.8)),
                suffixIcon: const Icon(Icons.search)),
          ),
        ),
      ),
    );
  }
}
