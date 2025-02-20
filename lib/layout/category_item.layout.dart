import 'package:flutter/material.dart';
import 'package:sale_management_app/constants/text_style.dart';

class CategoryItemLayout extends StatelessWidget {
  const CategoryItemLayout(
      {super.key,
      required this.title,
      required this.numberItem,
      required this.linkImages,
      required this.homePadding});

  final String title;
  final int numberItem;
  final List<String> linkImages;
  final double homePadding;
  @override
  Widget build(BuildContext context) {
    if (linkImages.length != 4) {
      return Text('Cần 4 ảnh');
    }

    double screenWidth = MediaQuery.of(context).size.width;
    double widthSize = (screenWidth - 10 - (homePadding * 2)) / 2;
    double edgeSize = (widthSize - 15) / 2;

    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                SizedBox(width: 5),
                CategoryItemImage(linkImage: linkImages[0], edgeSize: edgeSize),
                SizedBox(width: 5),
                CategoryItemImage(linkImage: linkImages[1], edgeSize: edgeSize),
                SizedBox(width: 5),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 5),
                CategoryItemImage(linkImage: linkImages[2], edgeSize: edgeSize),
                SizedBox(width: 5),
                CategoryItemImage(linkImage: linkImages[3], edgeSize: edgeSize),
                SizedBox(width: 5),
              ],
            ),
          ],
        ),
        SizedBox(height: 6),
        SizedBox(
          width: widthSize,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 5),
                  Text(title, style: TextStyles.smallTitle),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xFFF3F3F3),
                    ),
                    child: Text(
                      '$numberItem',
                      style: TextStyles.smallTitle,
                    ),
                  ),
                  SizedBox(width: 5),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CategoryItemImage extends StatelessWidget {
  const CategoryItemImage(
      {super.key, required this.linkImage, required this.edgeSize});
  final String linkImage;
  final double edgeSize;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        linkImage,
        width: edgeSize,
        height: edgeSize,
        fit: BoxFit.cover,
      ),
    );
  }
}
