import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  String name;
  String price;
  String desc;
  bool isVeg;
  String imgurl;
  bool isbestseller;

  FoodCard({
    super.key,
    required this.name,
    required this.price,
    required this.desc,
    required this.isVeg,
    required this.imgurl,
    required this.isbestseller,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        //height: h / 5,
        width: w * 0.8,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.4)),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
              width: w * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: isbestseller,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "BESTSELLER",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.amber,
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Icon(
                          size: 12,
                          Icons.square,
                          color: isVeg ? Colors.green : Colors.red,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "₹$price",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey.withOpacity(0.8)),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(desc,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.withOpacity(0.8)))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 15),
              height: 105,
              child: Stack(
                children: [
                  SizedBox(
                    height: 85,
                    width: 105,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        imgurl,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 5,
                      left: 20,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 6),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: const Text(
                          "add",
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 204, 255),
                              fontWeight: FontWeight.w700),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
