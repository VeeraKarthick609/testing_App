import 'package:flutter/material.dart';

class FoodCategories extends StatelessWidget {
  const FoodCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      itemCount: 8,
      itemBuilder: (context, index) {
        return FoodButton(
          imgUrl:
              "https://th.bing.com/th/id/OIP.yvh3e4Jjalsi9Qpy_Yh-HgAAAA?pid=ImgDet&rs=1",
          foodName: "Pani puri",
        );
      },
    );
  }
}

class FoodButton extends StatelessWidget {
  String imgUrl;
  String foodName;
  FoodButton({super.key, required this.imgUrl, required this.foodName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: SizedBox(
                height: 60,
                width: 60,
                child: Image.network(
                  imgUrl,
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            foodName,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
