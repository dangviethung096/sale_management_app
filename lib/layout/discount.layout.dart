import 'package:flutter/material.dart';

class Discounts extends StatelessWidget {
  const Discounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 335,
          height: 40,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 7,
                child: Container(
                  width: 335,
                  height: 28,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF8F8F8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
              Positioned(
                left: 104,
                top: 0,
                child: SizedBox(
                  width: 60,
                  height: 40,
                  child: FlutterLogo(),
                ),
              ),
              Positioned(
                left: 118,
                top: 12,
                child: Text(
                  '20%',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF004CFF),
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.19,
                  ),
                ),
              ),
              Positioned(
                left: 17,
                top: 13,
                child: Text(
                  'All',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    height: 1.31,
                    letterSpacing: -0.13,
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 13,
                child: Text(
                  '10%',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    height: 1.31,
                    letterSpacing: -0.13,
                  ),
                ),
              ),
              Positioned(
                left: 180,
                top: 13,
                child: Text(
                  '30%',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    height: 1.31,
                    letterSpacing: -0.13,
                  ),
                ),
              ),
              Positioned(
                left: 237,
                top: 13,
                child: Text(
                  '40%',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    height: 1.31,
                    letterSpacing: -0.13,
                  ),
                ),
              ),
              Positioned(
                left: 293,
                top: 13,
                child: Text(
                  '50%',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    height: 1.31,
                    letterSpacing: -0.13,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
