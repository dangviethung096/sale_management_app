import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sale_management_app/constants/app_colors.dart';
import 'package:sale_management_app/constants/text_style.dart';
import 'package:sale_management_app/layout/button.layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.white,
                            ),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/avatar.jpeg',
                              width: 43,
                              height: 43,
                            ),
                          ),
                        ),
                        SizedBox(width: 14),
                        BasicButton(
                          label: 'Hoạt động',
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ClipOval(
                          child: Container(
                            color: AppColors.iconBackground,
                            padding: EdgeInsets.all(8),
                            child:
                                SvgPicture.asset('assets/images/voucher.svg'),
                          ),
                        ),
                        ClipOval(
                          child: Container(
                            color: AppColors.iconBackground,
                            padding: EdgeInsets.all(8),
                            child:
                                SvgPicture.asset('assets/images/message.svg'),
                          ),
                        ),
                        ClipOval(
                          child: Container(
                            color: AppColors.iconBackground,
                            padding: EdgeInsets.all(8),
                            child:
                                SvgPicture.asset('assets/images/setting.svg'),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Xin chào, Hưng!',
                      style: TextStyles.bigTitle,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Thông báo',
                        style: TextStyles.smallTitle,
                      ),
                      Icon(Icons.arrow_forward, color: Colors.blue),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Đã xem gần đây',
                  style: TextStyles.mediumTitle,
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(5, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/person_0${index + 1}.png',
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter,
                            width: 60,
                            height: 60,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Đơn hàng',
                  style: TextStyles.mediumTitle,
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OrderButton(label: 'Chờ thanh toán'),
                      SizedBox(width: 10),
                      OrderButton(label: 'Nhận hàng'),
                      SizedBox(width: 10),
                      OrderButton(label: 'Đánh giá'),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Stories',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(4, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/story_${index + 1}.png'),
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                          child: index == 0
                              ? Padding(
                                  padding: const EdgeInsets.only(
                                    top: 4,
                                    left: 4,
                                  ),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.green),
                                      child: Text(
                                        'Live',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : null,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.white,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: _selectedIndex == 0 ? AppColors.black : AppColors.primary,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              color: _selectedIndex == 1 ? AppColors.black : AppColors.primary,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: _selectedIndex == 2 ? AppColors.black : AppColors.primary,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: _selectedIndex == 3 ? AppColors.black : AppColors.primary,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

class OrderButton extends StatelessWidget {
  final String label;

  const OrderButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.orderBackground,
        foregroundColor: AppColors.orderText,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(label),
    );
  }
}
