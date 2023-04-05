import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controller/controller.dart';
import '/screens/search/dish_search.dart';

import '../screens/search/search_screen.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  int pageValue = 0;
  bool restaurant = true;
  bool dish = false;
  var active = const TextStyle(fontWeight: FontWeight.bold, fontSize: 14);
  var inactive = const TextStyle(
      fontWeight: FontWeight.w100, fontSize: 14, color: Colors.grey);
  MyController _c = MyController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Get.to(RestaurantSearch());
            _c.currentPage.value = 0;
            setState(() {
              restaurant = true;
              dish = false;
            });
          },
          child: Column(
            children: [
              Text(
                "Restaurant",
                style: restaurant ? active : inactive,
              ),
              const SizedBox(
                height: 10,
              ),
              Visibility(
                  visible: restaurant,
                  child: Container(
                    width: 70,
                    height: 4,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5))),
                  ))
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            _c.currentPage.value = 1;
            Get.to(DishScreen());
            setState(() {
              restaurant = false;
              dish = true;
            });
          },
          child: Column(
            children: [
              Text(
                "Dishes",
                style: dish ? active : inactive,
              ),
              const SizedBox(
                height: 10,
              ),
              Visibility(
                  visible: dish,
                  child: Container(
                      width: 45,
                      height: 4,
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5)))))
            ],
          ),
        )
      ],
    );
  }
}
