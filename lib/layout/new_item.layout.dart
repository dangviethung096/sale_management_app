import 'package:flutter/material.dart';
import 'package:sale_management_app/constants/app_colors.dart';
import 'package:sale_management_app/constants/text_style.dart';

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
        border: Border.all(color: AppColors.white, width: 2),
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              imageUrl,
              height: 130,
              width: 130,
              fit: BoxFit.cover,
            ),
          ),
          Text(title, style: TextStyles.smallTitle),
          Text(price, style: TextStyles.smallTitle, textAlign: TextAlign.right),
        ],
      ),
    );
  }
}
