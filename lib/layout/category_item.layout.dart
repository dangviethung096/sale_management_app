import 'package:flutter/material.dart';
import 'package:sale_management_app/constants/text_style.dart';

class CategoryItemLayout extends StatelessWidget {
  const CategoryItemLayout(
      {super.key,
      required this.title,
      required this.numberItem,
      required this.linkImages});

  final String title;
  final int numberItem;
  final List<String> linkImages;

  @override
  Widget build(BuildContext context) {
    if (linkImages.length != 4) {
      return Text('Cần 4 ảnh');
    }
    return SizedBox(
      width: 165,
      child: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 5),
                  CategoryItemImage(linkImage: linkImages[0]),
                  SizedBox(width: 5),
                  CategoryItemImage(linkImage: linkImages[1]),
                  SizedBox(width: 5),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  SizedBox(width: 5),
                  CategoryItemImage(linkImage: linkImages[2]),
                  SizedBox(width: 5),
                  CategoryItemImage(linkImage: linkImages[3]),
                  SizedBox(width: 5),
                ],
              ),
            ],
          ),
          SizedBox(height: 6),
          Row(
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
          )
        ],
      ),
    );
  }
}

class CategoryItemImage extends StatelessWidget {
  const CategoryItemImage({super.key, required this.linkImage});
  final String linkImage;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        linkImage,
        width: 75,
        height: 75,
        fit: BoxFit.cover,
      ),
    );
  }
}
