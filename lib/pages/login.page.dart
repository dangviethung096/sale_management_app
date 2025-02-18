import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background design
          Positioned(
            top: -55,
            left: -40,
            child: Image.asset(
              'assets/images/bubble_02.png',
              width: 373,
              height: 442,
            ),
          ),
          Positioned(
            top: -150,
            left: -100,
            child: Image.asset(
              'assets/images/bubble_01.png',
              width: 403,
              height: 443,
            ),
          ),
          Positioned(
            top: 240,
            right: -50,
            child: Image.asset(
              'assets/images/bubble_03.png',
              width: 150,
              height: 150,
            ),
          ),
          Positioned(
            bottom: 0,
            right: -80,
            child: Image.asset(
              'assets/images/bubble_04.png',
              width: 443,
              height: 374,
            ),
          ),
          // Login form
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Đăng nhập',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Chào mừng bạn trở lại! ❤️',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 30),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Tên đăng nhập',
                      filled: true,
                      fillColor: Colors.white.withAlpha(204),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.buttonBackground,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: Text(
                        'Tiếp tục',
                        style: TextStyle(fontSize: 22, color: AppColors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
