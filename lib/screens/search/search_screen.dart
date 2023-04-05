import 'package:flutter/material.dart';
import '/widgets/all_restaurants.dart';

import '../../widgets/bottom_bar.dart';
import '../../widgets/search_bar.dart';
import '../../widgets/top_nav_bar.dart';

class RestaurantSearch extends StatelessWidget {
  RestaurantSearch({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(240, 255, 255, 255),
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Stack(children: [
          Expanded(
              child: Column(
            children: [
              Material(
                elevation: 1,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                  child: Column(
                    children: [
                      SearchBar(
                        isBack: true,
                        text: "Search for foods and restaurants",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TopBar(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  child: AllRestaurants(),
                ),
              )

              /* Expanded(
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: RestaurantCard(
                            imgurl:
                                "https://th.bing.com/th/id/R.1b25aa30361fe0309324ce1a398e6822?rik=OuS%2fx6Y9uPL83g&riu=http%3a%2f%2fwww.brandinglosangeles.com%2fwp-content%2fuploads%2frestaurantlogodesign.jpg&ehk=yWlorcwLPaO3eyGt%2b8S4QPXJsURk7%2flsUQ3fat5tOnI%3d&risl=&pid=ImgRaw&r=0",
                            Address: "15/25, U-BLOCK, PHASE-3",
                            category: "Chinese,Indian",
                            distance: "2.6",
                            name: "The Cuisine Lab",
                            offer: "FREE DELIVERY ABOVE 150",
                          ),
                        );
                      }),
                ) */
              /* Expanded(child: Obx(() {
                  if (_c.currentPage.value == 1) {
                    return Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: AllRestaurants(),
                    );
                  } else {
                    return ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: RestaurantCard(
                              imgurl:
                                  "https://th.bing.com/th/id/R.1b25aa30361fe0309324ce1a398e6822?rik=OuS%2fx6Y9uPL83g&riu=http%3a%2f%2fwww.brandinglosangeles.com%2fwp-content%2fuploads%2frestaurantlogodesign.jpg&ehk=yWlorcwLPaO3eyGt%2b8S4QPXJsURk7%2flsUQ3fat5tOnI%3d&risl=&pid=ImgRaw&r=0",
                              Address: "15/25, U-BLOCK, PHASE-3",
                              category: "Chinese,Indian",
                              distance: "2.6",
                              name: "The Cuisine Lab",
                              offer: "FREE DELIVERY ABOVE 150",
                            ),
                          );
                        });
                  }
                })),
              ],
            ),
          ), */
              ,
            ],
          )),
          const Positioned(
            bottom: 40,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: BottomBar(),
            ),
          )
        ])));
  }
}
