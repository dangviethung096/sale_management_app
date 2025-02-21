import 'package:flutter/material.dart';
import 'package:sale_management_app/layout/discount.layout.dart';

class FlashSalePage extends StatelessWidget {
  const FlashSalePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Discounts(),
        ],
      )),
    );
  }
}
