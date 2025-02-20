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
