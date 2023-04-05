import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  String name;
  String offer;
  String distance;
  String time;
  String imageUrl;
  RestaurantCard(
      {super.key,
      required this.distance,
      required this.name,
      required this.offer,
      required this.time,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          width: width,
          height: height / 4,
          //margin: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: NetworkImage(imageUrl), fit: BoxFit.cover)),
        ),
        Container(
          width: width,
          height: height / 4,
          //margin: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.grey.withOpacity(0.0),
                  Colors.black,
                ],
                stops: const [
                  0.0,
                  1.0
                ]),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Positioned(
            top: 6,
            right: 12,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.white,
                ))),
        Positioned(
            bottom: 10,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 18)),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.location_pin,
                          color: Colors.white,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text("$distance KM",
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 9))
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.coffee_maker_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text("$time mins",
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 9))
                      ],
                    )
                  ],
                )
              ],
            )),
        Positioned(
            bottom: 16,
            right: 6,
            child: Text("$offer% off*",
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 32)))
      ],
    );
  }
}
