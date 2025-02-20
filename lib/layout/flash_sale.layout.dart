import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sale_management_app/constants/text_style.dart';
import 'dart:async';

class FlashSaleTitleLayout extends StatelessWidget {
  const FlashSaleTitleLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Deal chớp nhoáng', style: TextStyles.mediumTitle),
        Row(
          children: [
            SvgPicture.asset('assets/images/clock_icon.svg'),
            SizedBox(
              width: 10,
            ),
            CountdownTimer(),
          ],
        ),
      ],
    );
  }
}

class CountdownTimer extends StatefulWidget {
  const CountdownTimer({super.key});

  @override
  CountdownTimerState createState() => CountdownTimerState();
}

class CountdownTimerState extends State<CountdownTimer> {
  late Timer _timer;
  int _start = 3600; // 1 hour in seconds

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final int hours = _start ~/ 3600;
    final int minutes = (_start % 3600) ~/ 60;
    final int seconds = _start % 60;

    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Color(0xFFFFEBEB),
            borderRadius: BorderRadius.circular(7),
          ),
          child: Text(hours.toString().padLeft(2, '0'),
              style: TextStyles.mediumTitle),
        ),
        SizedBox(width: 2),
        Text(':', style: TextStyles.mediumTitle),
        SizedBox(width: 2),
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Color(0xFFFFEBEB),
            borderRadius: BorderRadius.circular(7),
          ),
          child: Text(minutes.toString().padLeft(2, '0'),
              style: TextStyles.mediumTitle),
        ),
        SizedBox(width: 2),
        Text(':', style: TextStyles.mediumTitle),
        SizedBox(width: 2),
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Color(0xFFFFEBEB),
            borderRadius: BorderRadius.circular(7),
          ),
          child: Text(seconds.toString().padLeft(2, '0'),
              style: TextStyles.mediumTitle),
        ),
      ],
    );
  }
}

class FlashSaleItem extends StatelessWidget {
  const FlashSaleItem(
      {super.key, required this.imageUrl, required this.edgeSize});

  final String imageUrl;
  final double edgeSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: edgeSize,
      height: edgeSize,
      decoration: BoxDecoration(
        color: Color(0xFFFFEBEB),
        border: Border.all(
          color: Colors.white,
          width: 3.0,
        ),
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha((0.3 * 255).toInt()),
            offset: Offset(2, 2),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.network(imageUrl, fit: BoxFit.cover),
      ),
    );
  }
}
