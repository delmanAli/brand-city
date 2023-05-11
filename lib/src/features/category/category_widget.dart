import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      // width: Get.width / 2,
      // height: Get.height / 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            child: const Image(
              image: NetworkImage('https://picsum.photos/250?image=9'),
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            'Men',
            style: Get.textTheme.labelSmall!.copyWith(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            'T-Shirt',
            style: Get.textTheme.bodySmall!.copyWith(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
