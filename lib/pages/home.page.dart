import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sale_management_app/constants/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Cửa hàng', style: TextStyles.bigTitle),
                  Spacer(),
                  SearchBar(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 36,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 248,
                  height: 36,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF8F8F8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 9,
                child: Text(
                  'Search',
                  style: TextStyle(
                    color: Color(0xFFC6C6C6),
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    height: 1.31,
                    letterSpacing: -0.16,
                  ),
                ),
              ),
              Positioned(
                left: 212,
                top: 10,
                child: SizedBox(
                  width: 19.56,
                  height: 16,
                  child: SvgPicture.asset('assets/images/camera_icon.svg'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
