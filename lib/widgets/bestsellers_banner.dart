import 'package:flutter/material.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            //margin: const EdgeInsets.all(10),
            height: 144,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(10)),
          ),
          Positioned(
              top: 45,
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                      "https://th.bing.com/th/id/R.2e44c06bc7869f7fcebf0fea1e941da9?rik=%2fH0r9zejTOqqHw&riu=http%3a%2f%2fclipartmag.com%2fimage%2ffrench-fries-drawing-24.jpg&ehk=YhW52%2bc6wljerQBxfwBLKGO51twlYUNfhE6SAba2gNI%3d&risl=&pid=ImgRaw&r=0",
                      height: 50,
                    ),
                    Column(
                      children: const [
                        Text(
                          "ORDER",
                          style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "BESTSELLERS",
                          style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )
                      ],
                    ),
                    Image.network(
                      "https://clipartcraft.com/images/transparent-emojis-sparkle-2.png",
                      height: 50,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
