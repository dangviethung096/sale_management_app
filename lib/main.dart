import 'package:flutter/material.dart';
import 'package:sale_management_app/pages/account.page.dart';
import 'package:sale_management_app/pages/flash_sale.page.dart';
import 'package:sale_management_app/pages/home.page.dart';
import 'package:sale_management_app/pages/login.page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cửa hàng',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        '/account': (BuildContext context) => const AccountPage(),
        '/home': (BuildContext context) => const HomePage(),
        '/flash-sale': (BuildContext context) => const FlashSalePage(),
      },
    );
  }
}
