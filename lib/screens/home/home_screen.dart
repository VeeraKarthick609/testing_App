import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/controller/controller.dart';

import '/screens/search/search_screen.dart';
import '/widgets/bottom_bar.dart';
import '../../widgets/all_restaurants.dart';
import '../../widgets/bestsellers_banner.dart';
import '../../widgets/food_categories.dart';
import '../../widgets/restaurant_banner.dart';

import '../best_sellers.dart';
import 'appbar/appbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final MyController _c = MyController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SafeArea(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Appbar(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Restaurantbanner(),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: Material(
                      elevation: 2,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 47,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Search for restaurants or foods",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    color: Colors.grey.withOpacity(0.8),
                                  )),
                              Icon(Icons.search,
                                  color: Colors.grey.withOpacity(0.8))
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Get.to(RestaurantSearch());
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: const AbsorbPointer(child: BestSeller()),
                    onTap: () {
                      Get.to(const BestSellerScreen());
                      _c.isHome.value = false;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Select your taste buds',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const FoodCategories(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'All Restaurants',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const AllRestaurants(),
                  const SizedBox(
                    height: 5,
                  )
                ],
              ),
            )),
          ),
          const Positioned(
            bottom: 30,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: BottomBar(),
            ),
          )
        ],
      ),
    );
  }
}
