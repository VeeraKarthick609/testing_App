import 'package:flutter/material.dart';

import 'food_card.dart';

class RestaurantCard extends StatelessWidget {
  String imgurl;
  String name;
  String category;
  String Address;
  String offer;
  String distance;
  RestaurantCard(
      {super.key,
      required this.imgurl,
      required this.name,
      required this.Address,
      required this.category,
      required this.distance,
      required this.offer});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      height: height / 3,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Expanded(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 15,
                          ),
                          height: 60,
                          width: 60,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(imgurl),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              category,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              Address,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              offer,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.red),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(10)),
                          //width: 50,
                          //height: 15,
                          child: Row(children: const [
                            Icon(
                              Icons.location_pin,
                              size: 12,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text("Locate")
                          ]),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Text(
                          "${distance}KM AWAY",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w200,
                              color: Colors.black.withOpacity(0.6)),
                        )
                      ],
                    )
                  ]),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20),
              height: 145,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  FoodCard(
                    isbestseller: false,
                    name: "Veg Rice",
                    price: "200",
                    desc: "steam based fried rice with chopped onions",
                    isVeg: true,
                    imgurl:
                        "https://img.aws.livestrongcdn.com/ls-1200x630/ds-photo/getty/article/225/75/486724980.jpg",
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  FoodCard(
                    isbestseller: false,
                    name: "Veg Rice",
                    price: "200",
                    desc: "steam based fried rice with chopped onions",
                    isVeg: true,
                    imgurl:
                        "https://img.aws.livestrongcdn.com/ls-1200x630/ds-photo/getty/article/225/75/486724980.jpg",
                  )
                ],
              ),
            ),
            /* FoodCard(
              isbestseller: false,
              name: "Veg Rice",
              price: "200",
              desc: "steam based fried rice with chopped onions",
              isVeg: true,
              imgurl:
                  "https://img.aws.livestrongcdn.com/ls-1200x630/ds-photo/getty/article/225/75/486724980.jpg",
            ) */
            /* Expanded(
              child: Scrollbar(
                child: PageView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return FoodCard(
                        name: "Veg Rice",
                        price: "200",
                        desc: "steam based fried rice with chopped onions",
                        isVeg: true,
                        imgurl:
                            "https://img.aws.livestrongcdn.com/ls-1200x630/ds-photo/getty/article/225/75/486724980.jpg",
                      );
                    }),
              ),
            ) */
          ],
        ),
      ),
    );
  }
}
