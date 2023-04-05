import 'package:flutter/material.dart';

import '../widgets/all_restaurants.dart';
import '../widgets/bottom_bar.dart';

class BestSellerScreen extends StatelessWidget {
  const BestSellerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "FOSSIP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("BESTSELLERS!",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 34,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Image.network(
                      "https://clipartcraft.com/images/transparent-emojis-sparkle-2.png",
                      height: 50,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Expanded(
                    child: Scrollbar(
                  child: AllRestaurants(),
                ))
              ],
            ),
            const Positioned(
              bottom: 30,
              child: BottomBar(),
            )
          ],
        ),
      )),
    );
  }
}
