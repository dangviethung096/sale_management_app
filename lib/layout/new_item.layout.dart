import 'package:flutter/material.dart';

class NewItemLayout extends StatelessWidget {
  const NewItemLayout(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.price});

  final String imageUrl;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(128),
            offset: Offset(0, 5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Image.network(
        imageUrl,
        height: 130,
        width: 130,
        fit: BoxFit.cover,
      ),
    );
  }
}
