import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/screens/home/home_screen.dart';
import '../controller/controller.dart';

import '../screens/best_sellers.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  bool home = true;
  bool sellers = false;
  final MyController _c = MyController();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width - 40;
    return Container(
      decoration: BoxDecoration(
          color: _c.isHome.value ? Colors.black : Colors.amber,
          borderRadius: BorderRadius.circular(10)),
      width: w,
      height: 45,
      child: Row(children: [
        GestureDetector(
          onTap: () {
            Get.to(HomeScreen());
            _c.isHome.value = true;
            setState(() {
              sellers = !sellers;
              home = !home;
            });
          },
          child: Column(
            children: [
              SizedBox(
                width: w / 2,
                height: 45,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        width: w * 0.3,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.home,
                              color:
                                  _c.isHome.value ? Colors.white : Colors.black,
                              size: 22,
                            ),
                            Text(
                              "HOME",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: _c.isHome.value
                                      ? Colors.white
                                      : Colors.black),
                            )
                          ],
                        ),
                      ),
                      Visibility(
                        visible: home,
                        child: Container(
                          width: w * 0.4,
                          height: 2,
                          decoration: BoxDecoration(
                              color: _c.isHome.value
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(const BestSellerScreen());
            _c.isHome.value = false;
            setState(() {
              sellers = !sellers;
              home = !home;
            });
          },
          child: Column(
            children: [
              SizedBox(
                width: w / 2,
                height: 45,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        width: w * 0.35,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.star,
                              color:
                                  _c.isHome.value ? Colors.white : Colors.black,
                              size: 18,
                            ),
                            Text(
                              "BESTSELLER",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: _c.isHome.value
                                      ? Colors.white
                                      : Colors.black),
                            )
                          ],
                        ),
                      ),
                      Visibility(
                        visible: sellers,
                        child: Container(
                          width: w * 0.4,
                          height: 2,
                          decoration: BoxDecoration(
                              color: _c.isHome.value
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
