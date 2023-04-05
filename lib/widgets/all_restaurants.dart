import 'package:flutter/material.dart';
import '/widgets/restaurant_card.dart';

class AllRestaurants extends StatelessWidget {
  const AllRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              //margin: EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.only(bottom: 18.0),
              child: RestaurantCard(
                imageUrl:
                    "https://th.bing.com/th/id/OIP.Y58hHcbjO4HIk_F0Chz-OwHaEK?pid=ImgDet&rs=1",
                name: "Shandaar Momos",
                distance: "0.3",
                offer: "10",
                time: "20",
              ),
            );
          }),
    );
  }
}
