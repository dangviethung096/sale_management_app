import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sale_management_app/constants/text_style.dart';

class CategoryTitleInAccountLayout extends StatelessWidget {
  const CategoryTitleInAccountLayout({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyles.mediumTitle),
        Row(
          children: [
            Text(
              'Xem thêm',
              style: TextStyles.smallTitle,
            ),
            SizedBox(width: 13),
            SizedBox(
              width: 30,
              height: 30,
              child: ClipOval(
                  child: SvgPicture.asset('assets/images/arrow_right.svg')),
            ),
          ],
        )
      ],
    );
  }
}
