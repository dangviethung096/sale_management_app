import 'package:flutter/material.dart';
import 'package:sale_management_app/constants/app_colors.dart';
import 'package:sale_management_app/constants/text_style.dart';

class MostPopularItemLayout extends StatelessWidget {
  const MostPopularItemLayout(
      {super.key, required this.imageUrl, required this.status});

  final String imageUrl;
  final String status;

  @override
  Widget build(BuildContext context) {
    const double imageWidth = 93;
    const double imageHeight = 103;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.network(
            imageUrl,
            width: imageWidth,
            height: imageHeight,
          ),
          SizedBox(height: 5),
          SizedBox(
            width: imageWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text('1780', style: TextStyles.smallTitle),
                    Icon(
                      Icons.favorite,
                      size: 11,
                      color: AppColors.primary,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
