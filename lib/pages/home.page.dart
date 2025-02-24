import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sale_management_app/constants/text_style.dart';
import 'package:sale_management_app/layout/category_title.layout.dart';

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
                  SizedBox(width: 19),
                  SearchBar(),
                ],
              ),
              SizedBox(height: 20),
              BigSaleBanner(),
              SizedBox(height: 10),
              BannerControls(),
              SizedBox(height: 22),
              Categories(),
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
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 36,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Color(0xFFF8F8F8),
              border: Border.all(
                color: Color(0xFFF8F1F1),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    height: 36,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF8F8F8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      'Tìm kiếm',
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
                ),
                Positioned(
                  right: 16,
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
      ),
    );
  }
}

class BigSaleBanner extends StatelessWidget {
  const BigSaleBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double bigSaleBannerSize = screenWidth - (20 * 2);
    final double bigSaleBannerHeight = bigSaleBannerSize * (150 / 335);

    return Container(
      height: bigSaleBannerHeight,
      width: bigSaleBannerSize,
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Image.network(
              'https://s3-alpha-sig.figma.com/img/57f9/269e/977c424ef746dfc26edf741d32a623b6?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=PYB8ufMBFKNGHwqYAOBSHprizeqtQZOF9AQqfRDoofQvOsthOWS3522MVLAbY411ei2TNMjB0UlGr9tbV4PEnMBCFImgifmr7UotGJJH8JNJC5cOAGEDa2gAHLH89Tw2X5rTnEzTm6f0JmApevg8t8rXZJGB2ZS9~XUJtF0-CqXWVXYW9dFHY28B6e-KhiiNkXgd-p51ouKTgu35F4jXq2JQz76mFprRMOZF01yJzL14R1PPienp6wp65h540Q27AWb6BkXOedwTGpncSCWVmmx0bzqJ3y2TJSMBcPZaB76dTmdA2k1HVVCmWfS~xD6-1ZHOfQQTr8GsWgllPhdj5A__',
              height: bigSaleBannerHeight,
              width: bigSaleBannerSize,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 12,
            left: 18,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Siêu giảm giá',
                    style: TextStyles.bigTitle.copyWith(color: Colors.white)),
                Text('Lên tới 20%',
                    style: TextStyles.smallTitle.copyWith(color: Colors.white)),
              ],
            ),
          ),
          Positioned(
            bottom: 3,
            left: 18,
            child: Text('Đang diễn ra',
                style: TextStyles.smallTitle.copyWith(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

class BannerControls extends StatelessWidget {
  const BannerControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 10,
          decoration: ShapeDecoration(
            color: Color(0xFF0042E0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ),
        SizedBox(width: 15),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: Color(0xFFDFE9FF),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 15),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: Color(0xFFDFE9FF),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 15),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: Color(0xFFDFE9FF),
            shape: BoxShape.circle,
          ),
        )
      ],
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryTitle(title: 'Danh mục'),
      ],
    );
  }
}
