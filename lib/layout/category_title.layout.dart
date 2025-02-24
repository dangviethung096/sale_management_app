import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xFF202020),
            fontSize: 21,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
            height: 1.43,
            letterSpacing: -0.21,
          ),
        ),
        Row(
          children: [
            Text(
              'Xem thêm',
              style: TextStyle(
                color: Color(0xFF202020),
                fontSize: 15,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
              ),
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
