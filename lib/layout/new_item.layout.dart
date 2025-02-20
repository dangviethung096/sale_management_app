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
    double edgeImageSize = 130;
    double widthContainer = edgeImageSize + 2;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.white, width: 2),
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              imageUrl,
              height: edgeImageSize,
              width: edgeImageSize,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          SizedBox(
            width: widthContainer,
            child: Text(
              title,
              style: TextStyles.mediumBody,
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(
            width: widthContainer,
            child: Text(
              price,
              style: TextStyles.smallTitle,
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
