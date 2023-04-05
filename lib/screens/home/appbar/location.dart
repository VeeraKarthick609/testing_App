import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  String addressName;
  String address;
  Location({super.key, required this.addressName, required this.address});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2,
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.location_pin,
            size: 34,
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                addressName,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
              ),
              Text(
                address,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: Colors.grey.withOpacity(0.8),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
