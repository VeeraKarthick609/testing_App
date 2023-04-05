import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/screens/home/home_screen.dart';
import '/widgets/search_bar.dart';

import '../../widgets/dish_screen/food_card.dart';
import '../../widgets/offer_card.dart';

class Restaurant extends StatelessWidget {
  const Restaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            IconButton(
                onPressed: () {
                  Get.to(HomeScreen());
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 18,
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "The Cuisine Lab",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Chinese, Indian",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.withOpacity(0.9)),
                        ),
                        Text("Sector 24, 1.6 km",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.withOpacity(0.9))),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text("FREE DELIVERY ABOVE 150",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.red,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 15,
                          ),
                          height: 70,
                          width: 70,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                                "https://th.bing.com/th/id/R.1b25aa30361fe0309324ce1a398e6822?rik=OuS%2fx6Y9uPL83g&riu=http%3a%2f%2fwww.brandinglosangeles.com%2fwp-content%2fuploads%2frestaurantlogodesign.jpg&ehk=yWlorcwLPaO3eyGt%2b8S4QPXJsURk7%2flsUQ3fat5tOnI%3d&risl=&pid=ImgRaw&r=0"),
                          ),
                        ),
                        const Text("11:00 AM - 00:00 AM",
                            style: TextStyle(
                              fontSize: 10,
                              // color: Colors.grey.withOpacity(0.9)
                            ))
                      ],
                    ),
                  ]),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  OfferCard(
                    off1: "GET 30% OFF!",
                    off2: "on TAKE-AWAY",
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  OfferCard(
                    color: const Color.fromARGB(255, 255, 0, 85),
                    off1: "GET 30% OFF!",
                    off2: "on DINE-IN",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text("MENU"),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 1,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                  ),
                ],
              )),
            ),
            SearchBar(isBack: false, text: "Search for foods"),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.withOpacity(0.4))),
                  height: 30,
                  width: 55,
                  child: const Icon(
                    Icons.square,
                    color: Colors.green,
                    size: 14,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.withOpacity(0.4))),
                  height: 30,
                  width: 55,
                  child: const Icon(
                    Icons.square,
                    color: Colors.red,
                    size: 14,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.withOpacity(0.4))),
                  height: 30,
                  width: 85,
                  child: const Center(
                    child: Text(
                      "Bestseller",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(),
            ),
            const Text(
              "Recommended (5)",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Scrollbar(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return FoodCard(
                        isbestseller: true,
                        name: "Veg Rice",
                        price: "200",
                        desc: "steam based fried rice with chopped onions",
                        isVeg: true,
                        imgurl:
                            "https://img.aws.livestrongcdn.com/ls-1200x630/ds-photo/getty/article/225/75/486724980.jpg",
                      );
                    }),
              ),
            )
          ],
        ),
      )),
    );
  }
}
