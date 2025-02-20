import 'package:flutter/material.dart';

class MostPopularItemLayout extends StatelessWidget {
  const MostPopularItemLayout(
      {super.key, required this.imageUrl, required this.status});

  final String imageUrl;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          imageUrl,
          width: 93,
          height: 103,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [Text('1780'), Icon(Icons.heart_broken)],
            ),
            Text(status),
          ],
        )
      ],
    );
  }
}
