import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sale_management_app/constants/app_colors.dart';
import 'package:sale_management_app/constants/text_style.dart';
import 'package:sale_management_app/layout/button.layout.dart';
import 'package:sale_management_app/layout/category_item.layout.dart';
import 'package:sale_management_app/layout/category_title_in_account.layout.dart';
import 'package:sale_management_app/layout/flash_sale.layout.dart';
import 'package:sale_management_app/layout/most_popular_item.layout.dart';
import 'package:sale_management_app/layout/new_item.layout.dart';

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

  final double _homePadding = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.all(_homePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
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
                SizedBox(height: 28),
                CategoryTitleInAccountLayout(title: 'Sản phẩm mới'),
                SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      NewItemLayout(
                        imageUrl:
                            'https://s3-alpha-sig.figma.com/img/337a/22ae/49b350434fc9e50a9abb7351559ff374?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Xm73g8DSdSRlGDpa-uHZtf~bd8sikY269DLyTQ4xN412aKgDRQ8yG8~KARXRSXy7fMzqpLBpoZwwSvKiQnb7~-imM2OWV~xqIjKhkb9dMFHhkIf7ZSQVDoroK~wcUqHViqahO1f0DVqE5DpS8MTMgQlwcVvLzNV9v3dGEZ9zC1IvLbv9X6raFGbatBizdBAYJIPC7Lhv~WiJpu3MV6Ox-vkyPweSJiJPe3uTgW6EOkimHXJcZDqxjZXd3pZzdXgbf0BD86b25zJCNOi~ZmwmbVSa8rrcSrKBtQthn0fxLQSOdBX97FUVW3CKzLar2wgk0v2qx96CGNMRch2~tx431g__',
                        title: 'Áo Sweater',
                        price: '100.000đ',
                      ),
                      SizedBox(width: 10),
                      NewItemLayout(
                        imageUrl:
                            'https://s3-alpha-sig.figma.com/img/29fa/e184/053666ddc17b71621107f3fdefffc22d?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=c7TC8a0DLsdrAK9rEN9bCintJ9-BnkFdBkg6zjtAVmdW8oAm~rqidYm2rODiussxGHYMBgoc2PMYjwsyelFehtKdD541cDlQrUd7nM8ipEWOcMKxrcyBaDJS6nSeF8lTrBv12wPSMGPsjbJLAZ5vAL4se4aL9WiKEJPSJmabne4P2jrsPU18T55pYtkJ1RadoH3mCPwbeJ8sETX8SgaPtub9akp4F7yc2JoIxGf9rOToWPjLMai0Pt43xQNzpUZylEjsJFPW9M5w0WFiVQJsDTOmTIkkQmzTe6KiyEuDodp7QwWm6DWicLenG89sWRHrt6KjGbasru9OZXHo9NhkBw__',
                        title: 'Áo Hoodie',
                        price: '100.000đ',
                      ),
                      SizedBox(width: 10),
                      NewItemLayout(
                        imageUrl:
                            'https://s3-alpha-sig.figma.com/img/6a6a/7129/1fde341b60adcf3abb0c9f834bcf0398?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=KZwi8NWx5lczKXud6HI4xb5DmDic9kGd1pAnzDnS1zfeJWuosSrgjQWndLE~sqRmSCmYxLTxCVq0KOqjNJsd8FuBC8m~aGsQ0uFIBQ0BCzYi2btHgSZcty0tSH~47VDucuxM2PETG6hic2nZ0wVYmECFV8tS9parcrCcp2jaHZkCOqYnP~Rzw735ib7aWTlryfMaKpBNb9FwjidK109CVMb-dIpLBRhpV-RglNVZelpY770DbCVcuSTp3h-Te60CZxH9SRlBz~Rbk8S7uu2~DhKLN-qGkKq2AfWS1c714Ntkp3VCpW2FWRGIDNxWdUQtrnnp-gd8t4S~5V0wgNZWpQ__',
                        title: 'Áo thun',
                        price: '100.000đ',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 28),
                CategoryTitleInAccountLayout(title: 'Sản phẩm bán chạy'),
                SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MostPopularItemLayout(
                          imageUrl:
                              'https://s3-alpha-sig.figma.com/img/6a6a/7129/1fde341b60adcf3abb0c9f834bcf0398?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=KZwi8NWx5lczKXud6HI4xb5DmDic9kGd1pAnzDnS1zfeJWuosSrgjQWndLE~sqRmSCmYxLTxCVq0KOqjNJsd8FuBC8m~aGsQ0uFIBQ0BCzYi2btHgSZcty0tSH~47VDucuxM2PETG6hic2nZ0wVYmECFV8tS9parcrCcp2jaHZkCOqYnP~Rzw735ib7aWTlryfMaKpBNb9FwjidK109CVMb-dIpLBRhpV-RglNVZelpY770DbCVcuSTp3h-Te60CZxH9SRlBz~Rbk8S7uu2~DhKLN-qGkKq2AfWS1c714Ntkp3VCpW2FWRGIDNxWdUQtrnnp-gd8t4S~5V0wgNZWpQ__',
                          status: 'Mới'),
                      SizedBox(width: 6),
                      MostPopularItemLayout(
                          imageUrl:
                              'https://s3-alpha-sig.figma.com/img/677a/92ac/90b8bdb19f422b68f2b4af999172ef45?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=FvAkZURceDMpUKM9bHnNqfEY0mCoMngSl9l5nn3CW78ALmdtz2tfNp1tEyqhjyrdqxV28L~kZZAJBc-NIQBmi-clAK3qulroI6jmkHLPV7ZdwFJ9~IR32CmZ4ZSqpj8h~l4mUyCRKDXiBtbhHfxAUdVi2766YsXZWNMJrpPn-KkP8bHaLRp3Dn0oUmqFMihUkI1N6MVQlLxM9iCvw57ytm9a2BCX1BG68~f-ss0LBHrcgOxono~Zj3uSrdv-JgERngesUcLcFTV0kW6unFZcKfY6-nt~NxK2ze3Uu~A-7anjF0UkgFuWibcTJ7djCkK86y4nTgJHWuGVZSXdu9~hsg__',
                          status: 'Bán chạy'),
                      SizedBox(width: 6),
                      MostPopularItemLayout(
                          imageUrl:
                              'https://s3-alpha-sig.figma.com/img/e4a7/fe8f/bdc5579f712678cfdcb997655d89f238?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=qe~cmErj7fkgwgVChg1fEKrdI-z4HTHl70kYoKge8s8mVQIvl04w-3z0gGAMNusmHFFaEonrQ8ewdjQyipti5tBiVtPwnVGQDrNX1gm3MVKsCacFKRMDgVI-hqe6aydZHrrTq4WWGW0iNw~KRuuOs89~YF7bub2EerVCZkmHHwM29xnqSfkcHde89GR5DqGD1LZO0V3C7xLvxpntnftLiNDQFu2yk8qQiqw0~MPxmeYSL07m7SHzMG42ghGLfricdKSMkcXG2AF3WqnMQyKwirTpzBfp9Drd7B~6bZi1CI3VfoONJlNMwxCuDfCl6fVCThqxMKSSVDKjXZzZfBRYFQ__',
                          status: 'Bán chạy'),
                      SizedBox(width: 6),
                      MostPopularItemLayout(
                          imageUrl:
                              'https://s3-alpha-sig.figma.com/img/23cf/b746/a7d4115ae2df7a299aa6c5d8dfb71f22?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=DsHka~T9BFQeddLqZQajJQTxWQ-c6rbHnLUxTOo3-NOA~8e-2rN3o3-6aLexGKc8RSXihj-bF4FlxejQ3bFLHrQK5U46sUwgycHavVCvqC-lfM5JiKDuuZSjhAPqRxJuCq-2~NG9-li9v-uNxGuWt4a89zBMJaal7hYO7JbH9S2J~zx~U6HnE5JEyu-6oQihtmy6iBFJMQma11ikeh6hFhgP99cP8sFvnyKfZ6cRejlQtHFwZzoH8cd6-3I6rAm3RpKPo96cYmvUTa0qvyEUC~p~D5egAkEi3D2Qj1EhPA7n08qATDsUmCE4Wa7i9aRtEt7mnqcub8is6nydXmQuLg__',
                          status: 'Nên mua')
                    ],
                  ),
                ),
                SizedBox(height: 28),
                CategoryTitleInAccountLayout(title: 'Phân loại'),
                SizedBox(height: 16),
                CategoryItems(homePadding: _homePadding),
                SizedBox(
                  height: 28,
                ),
                FlashSaleTitleLayout(),
                SizedBox(
                  height: 16,
                ),
                FlashSaleItems(homePadding: _homePadding),
                SizedBox(
                  height: 28,
                ),
                CategoryTitleInAccountLayout(title: 'Top products'),
                SizedBox(
                  height: 16,
                ),
                TopProducts(),
                SizedBox(
                  height: 28,
                ),
                CategoryTitleInAccountLayout(title: 'Just For You'),
                SizedBox(
                  height: 16,
                ),
                JustForYou(),
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

class CategoryItems extends StatelessWidget {
  const CategoryItems({super.key, required this.homePadding});

  final double homePadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryItemLayout(
              numberItem: 200,
              linkImages: [
                'https://s3-alpha-sig.figma.com/img/6a6a/7129/1fde341b60adcf3abb0c9f834bcf0398?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=KZwi8NWx5lczKXud6HI4xb5DmDic9kGd1pAnzDnS1zfeJWuosSrgjQWndLE~sqRmSCmYxLTxCVq0KOqjNJsd8FuBC8m~aGsQ0uFIBQ0BCzYi2btHgSZcty0tSH~47VDucuxM2PETG6hic2nZ0wVYmECFV8tS9parcrCcp2jaHZkCOqYnP~Rzw735ib7aWTlryfMaKpBNb9FwjidK109CVMb-dIpLBRhpV-RglNVZelpY770DbCVcuSTp3h-Te60CZxH9SRlBz~Rbk8S7uu2~DhKLN-qGkKq2AfWS1c714Ntkp3VCpW2FWRGIDNxWdUQtrnnp-gd8t4S~5V0wgNZWpQ__',
                'https://s3-alpha-sig.figma.com/img/3ad6/5535/3543163e7923ed0879a6a43a2d0874d2?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=f8G-x-tzIaYFJc26WQCShf1mi-xhX1CB~DY7YdvE-ylE5-dg--1eGadrMuffWlp3PXP0wemWd6Q2BZ2HGHr2x8Lo6hXk50ulKWlS7cBWNpjM33aH2tv~ymF-R5ScLUq2RG00ayOj-5QCSH6pBlwkJvb0T6AyXJO7j3E0VVniFJHUC-nlzk1HDgzPKDqD80bjqyxvZ3aUgMHCEY-jyPfBjjTfdhkgIVm1iIABk-JDwcZJgfUQMDbGqNHN2CQ6pxQEEb3gArucCdvi3s36JJz8oo1teP2NrnA64m1KCoWldqO2dElYx7MlixQARGYx1rlibDlOtrClqYfwXBmFYlAKoA__',
                'https://s3-alpha-sig.figma.com/img/4255/c3d5/5af4d2bf5fb32d96303a1780d9473aed?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=rSbcYxTkwQR8-d1D9rtbmUZrcCxYlfFWGHnSvr-QPH8J7CY4djK-liZoi9CirGCqpAJRcoIHohKzJ4pEIiw9MnBJfXu8EKsrkrcw9m9RD1EotjOfo6AuwX8glXM7n~CwM-zqUzywxcyek1tvUPNnUU~OX4Xyen8yuGmf0eT7uomMu-z5eXgjLJOWQbVhzVKD3fzxegY1TEZiyYOE-jDuPJJXgNYmQX4Y5eEuYHMbRzihpPOvFeJGXvIl~e0O1fhweGHCsV3DBOWpp53MKkl~quLMwETUi4gA6F6agT74F3ZnDs0qDHdMOKklhgujOXwPrApUh8~ojEKecbEELuVbqw__',
                'https://s3-alpha-sig.figma.com/img/d0ca/85b1/3b70dabc3ccf004f28f528775bf37ec8?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=ECqvwvXad5LiZWydXqFU96rluOJuBz3M3lm6X5TYCgB2mTvAz~wkmswVdJvu25HIMZUph~B86oFuiLLulukHM0FgmAhyjS0EfO3KSR9PmHdaX7zLpyma6qy9qCpo89rGjQTJBIJ94oSin9mukhXAIdLLbZ9G4fo0qeHVB0ekNGOb2mjSNEjddaKFtxQMEJ67jGwPSuRgWBJ0jg33N-kDVWbl5tlY9ZvUPvlI0bXTW6CpVlghSU1S90GJmz4n06sYLthDK5uSC4Z4IayG5iY8eoLdcMop4yQ0isxziLD~8TqEYomJ6N2MVx4UW90VMcnCRi~5TiheZdcgYlWhpPRK5w__',
              ],
              title: 'Quần áo',
              homePadding: homePadding,
            ),
            CategoryItemLayout(
              numberItem: 4,
              linkImages: [
                'https://s3-alpha-sig.figma.com/img/991d/8877/42cbc5607a00b934ce15f45148471e12?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=kw7h8HSzyiMmVIHkp59n44LNx2xlEoIsOWT27Ba~HlLbhxIexLUU9C-tgJtCEgMoTtn7rs0ZQ-LXM198hVSMOJuPUMD7fpyVDs18Xd0MnY~dm3k2gNUNaZS~zBpgwzZV642HyKgoAI-IR6OUtLpA1qCIrvb2mj02ujeiKA2znE4G89YX0U~8I5rvfOIbAkq02AzKzQX6QfctnvOwRL6hLTFTtFUiNPuZ4fbsDtz5UhwG2ouSkpfTAIc1f2ap9BNmSUtqCeSkSf4CKcRCl0Od5wELYQICPR5UhHB1cWCXe8CG0bZr2v~9RQ3-BV7geKMi9GH5L2uYqJZnVLuzKw2OGQ__',
                'https://s3-alpha-sig.figma.com/img/1a92/279e/a52d38674003c68c84211d156ac8dded?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=jYn2fziDaIYnJ-DAFJ19sO3V-M4h3IjL-awnbf0R-LSen9IL7-6lZpXej8eCyv2VCIEkr1VHgK6-TBGR3~2QrJmOrPd0JNfScGevDbAF84Dq-Cufqcf-2TM-EtFnEhV5ddFWmIbSf8wVQVVnkT-Zd7fEexbgIX9yKBZxea3CQppSm-aMNPNADHvNhe3QMjka8AHRUpQ6m24jFJrMvz0gybxQqCpntBLK36wM83Z9UpmnpxtqfKGVAP~tR8uUuXbthvRKS6DCpC~vmhaqsgtnd46U7YYrU7dGzT1MvVTkDYL3ch4EftLenq93s6w3GtWHWPlzoPFbqzNo3iJD8p~egA__',
                'https://s3-alpha-sig.figma.com/img/b8af/79ff/84f0f26e4cb163816a9ec578e06b56c2?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=nDXKAJ84u9WiN-Mgvsk7PidHIPFV1esUB79RTMtwM-A6NtDRfjkv8iAJbDyvbfynkcfn0H9adLgQOc~-VV1NWeaBedFnnWakFj76AjF-ZA7i--O1XXHYR376LQUGRCcXcG6TLQkYEA8pBa6xijscFZgGhnASkfOjquvxqJaFGAIl48zGrWkfclUSG5duKORIZDv9yLNko5tCMLRjtwk8pge2XZ~r4OV1I~KUF6ScHxd-Qs1TwG~a-DH3Th-v-v2hva6nBDynm2BFXlv6PuzhzqUUE~LIsMy-FQEeR~hO-~L4mdDleCq0wGPy5qwrvrLZtYaaxGZrMfXfJ1F9fsHQOg__',
                'https://s3-alpha-sig.figma.com/img/e956/362e/01bf5676cde2501214a503e9aed8704b?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=MbI8RTZjckpiW-g43ZA1pv0HTOOS3R0ZUhhD-WvJPylzaFx5l4TYnjIWw5OIG3a31UqVjmkFuwmD2wLCNdQrpBoOZCjLYNndDSJPtpDQjBjVAZNWNlgrs2o6Ja0zBSxKkWzzU1KR7MKwd6XwLJ~Gpx5T0Wsy6vr2iwn1JqMwOsd-Qag20BgJ~HB9Qz0JelJoIVkZT-xPOSvyNE0nl57cWalO3W9Q1sEEwyIGVs2BfY-fL5ZYeJgNdK8jvK8wRFHLkhe-CNCeuboE5uua8XKQlsAumloZDU639Ew7CBcnHtGj2YgXVSWMEAOizrCOUMo88ma5dkiQfjyaurkgA6lwvw__',
              ],
              title: 'Giày dép',
              homePadding: homePadding,
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryItemLayout(
              numberItem: 4,
              linkImages: [
                'https://s3-alpha-sig.figma.com/img/5313/f9a3/22d52e49dc17ccbbfe8085a84058e8f0?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=GrEnu2tjEN91x5FQkifLWfeZu2XG2FDmCKwjZpsDiRrr6Ko-a017xy15NU1r2p5Pu8ex2TLwpGzr33qsD8rjQQZHyP3PE6awvCjsrWltXqmsOWpY~w9jpSTAozXdX7r48eH1eZtTwUgCv~i6dmOjoFfdw6oG2kkg6Fi~vmpcwYkHQkkEC6Oa0bRgS0eebcDJZUeWHW5cwCWoP5XMml1Qxw8cPCukOEQ4PiqbYiKqcwr4h-ChgSAXye5DF8y1iuWAD5yr0B6Q-GaYedIHorPSBjTDkDbSq22vN-AFCiXUnoR46eeTEgkpT2XoXGX3L6aKBXaHf-S6ph~bbsKYAGYCkQ__',
                'https://s3-alpha-sig.figma.com/img/17c2/2e7f/19d8a11e14248abc3f6be3d271cbb8db?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Mnl~g3HiAJAHskt1TQ8sTC4yg4KLxJnAtRcnDSl73cbCfspyBZmQ-vfHt1qAV3hybzMvzIBySEPecemjK4uTBKi6-crWSsYFlfs8bNpurU98egQzRptbbm3GEJ092DE5U~Bw2Sfl8ark53dZySJW95khXyrnS8YYLzmda99lhasI9wrP~FeqYU9Ol1NLi0F25Hif~QWQvvqHpDduD6ZFbEIdZT9CElFW0ANiRjqWYQdlEHlZfSBaNXb3AT9eohh-cbEn~bl~kPpns7z2vwIRo9-z2cDbJwJFYhhciDikMjOEWvFWwxSmpkJQNZWQkFhNr4ZhFaHw0WkHwEXThXtN2g__',
                'https://s3-alpha-sig.figma.com/img/8fde/1dd4/694209a582e512582dbd19cc2b269514?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Te4GVg4JXDyTqbJNTwi8z5NMq-ELqLKM11FYgtKGCSfZDVbv7YLrs9YGlGgysdNpApK3jzjERlLRfjNMWWqDcsCEsaUqxQ9O8sU8FJrV~sP7qop4-7-uiFJ9dv66Oc4sHsVNJEFYDfkLuWlRArvwUyDhN5LOQiRTsDLxHJdQsXcIlaF9Jw2vsTV8~kfqsX6GJZKJMniJvVpP2lJeLOeTEJg0QMI0lWwzKH1JJKT62Zo1gNnQ3TWOzxmSfHleTANX8XU6k3EPMZzAYdxw6CHr1NRZ3Q-p9HWYtjc~clhzs3lagh10XcVUf~Cpso6lCXAEnmUBdvTkL~Ri25M5v8RY0A__',
                'https://s3-alpha-sig.figma.com/img/0511/054f/63899b4bfcecb70c477a5555474b1f7a?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=I~VYKoE7AOb2poKMrHW3lI57duU-WYtyOwN~P7h3T6z3Wz99gHTYTOxa2QXLqtpoySpxXNQd2G6O3yNcFnOmjg9O30CaF-kRbQQocXYSsEedHnJF0pb5O~xLfMnVkrFSqJfi3e2os1S2Sq6CuImmw9v5ZzmRBHjPI73azOvf1j6NlFrrBRWwWvaEvLyJ5~AapaKeAktPFVc5PSwrbGZq~ChOg1bGL7pUjaz2yEkzawRw~-9BwWvog7CN~l2ulUJTWd2FCDoOlyl5R4WgrwnDFtlDf3ChWAwhzKl-xR2HjE~Ts3Qzkvop2xXFVzDyS82CKd5H8pPdAnBcLF3gJeUASw__',
              ],
              title: 'Túi xách',
              homePadding: homePadding,
            ),
            CategoryItemLayout(
              numberItem: 4,
              linkImages: [
                'https://s3-alpha-sig.figma.com/img/ff82/23b8/cce76dc72e8ae72ddcefbd0bb1fb7554?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=qDIN1oCBnFuvJlGJK4XB8hWG5Zl8mMJBG8738t-HgmE5uo~-Jryyjmq7NlCq7yjL4AUWVvgE3V1ec87JhbqWOE8nt5preQpqtlzR-4~F1ab0KrGPZaImke0j2CKBIe9XN5iU--Jrspb94fAKPM~RKelVQrYhY0E35gUP0iyKZQoPPxCsZgXpjNxfMCs8VYPdAYYl4scKbF6P1weHBRBqvlf6vU~PLRCkh~~rvN5likRDKT5GZY8FT20gWwDCuxF3svvyOWkkTa0JwiKTluEOd0v6Rl3Ccgabf2hQuguclbuxLM0a35t5XsaO7HDtmG4JNTs9uY-SYaWMRohn92bYmQ__',
                'https://s3-alpha-sig.figma.com/img/de48/34f6/fe4364479aa565824cf26c0ddf0be045?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=sd-tDohz3Jtjb0Gu3M7tTh8Eb3AS3GNvtVWBBc8SgpWiStD0vHvryLFOlaGA34yr598YWZ4l~7UpmpamMqB2cNKg3AZlCYow371oR89tlaf1msn8My2KZXML-IbeVa-yzzeNlr7yUghJU7LKoNJ-TPV6nhJTvJ6JVal7J2B6nosTGo5IMqOjQPHfY1c~suawgUbccrkJ-Xtkt8K3oV0tTLGTUmCfepnhzLXgLBhaReFQi-EzkQnX56yChee0BuoccvbM9S5HTJo0cd1r22vE358OQzpFxXTLMYQGMYuMQ3BK5AuC0pD8u296c3tkGuzljOw2wyF4ZzpJsLbEAYOybw__',
                'https://s3-alpha-sig.figma.com/img/454d/fbe2/1049ef4bcfed9c28d83d036e575f0bdf?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=kRT20tOIK-iRFA~Ht1-AanQ930ffK0eOurLrLdb~-wQ1v9SGPeB03kLadfsu0bLb9-xTkJt8gBBA-td3m9iwo8I5XgUpzpenKAyl9eBVi2aHhap6Yra4maUbCyOIlVrkwUTp2FxbjVQ1V~2OO3lums1xrChmNc2puYW4z14MwwR0O0J2qJmwyhsxiYruD8filf3HYxBI2v1OHDb~qQfuUE3cQPqOrDSBBz1UOPfvjeLOdamHoBZud7tQSjBQyH8NCLYTMqJ31k2d2E6k7DY3eiumXSqW5ZVWuYYim9A4YNJs~pu2WcbMyaFG4qPZHxd3bdTQgUdPM5gvd1zZq2gF4A__',
                'https://s3-alpha-sig.figma.com/img/3c61/063a/cc87d5cb8a19c2b660d91c64379ed5cb?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=JPzdrRCNvS2L5fFXJ9NTEx23m8oCcODcrRqd5JnYDKdNc-divqmw6kLWDJU7J7mxiCv~1M03CMXsbVNKrxaBxgxc-4M112lGtvjD8b2CUZY5ssRU5YwnKJDxPCSh9gak26QxIVxf3TdZXz46wL366bt7MLxneM9rW841iIgqgIorl8tb~k~3zPlN1kUR11TetJ0qVtA8Tv1hGYkxdYARcBxUg-uCz13m7unAaty6kt-lDaFaDA5sDZhmBGLcTgilm1K4Zr0T7pPp4ptPuC4okAjyjDVaxjGRTd1N72eOcvoB2rAhRfpFd7H6U95USqCoOkYiFQEwhmRl5OGxUd-F~Q__',
              ],
              title: 'Đồ tắm',
              homePadding: homePadding,
            ),
          ],
        )
      ],
    );
  }
}

class FlashSaleItems extends StatelessWidget {
  const FlashSaleItems({super.key, required this.homePadding});

  final double homePadding;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final double edgeSize = (screenWidth - homePadding - 40) / 3;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlashSaleItem(
                imageUrl:
                    'https://s3-alpha-sig.figma.com/img/39a9/4b6c/b66665a43b8e7d98053af3ed69d2469a?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=G1~Cqc3HD6AA-xIUy4-HMgJLaWkR4yQHScMzZIHOfFK6TJ~4jkcppSUbNCwM7tJs~eBwD~427wd7GMitdxSrM1covP~wPI~Xhop6r3RH5odTVOOtf6DcyNSupzsu8Q8jqgwydPgx2kVsgc34TpVlE0fwywPUYvcaji6XE-tyt2Iq49JWc4vzFinohIrZWWUWmVzDDHUY-4AZNHxx6I~nBZ9zrXFEoxFaT-BeVIPQ8Mg0ZijfML04qPcK~m-xxh-DSvBmoTJqjWSMwT0wI9C5syQJbgu041tWotfmQmOtANdB2lwXF1IzkaWOysJuXgIFqrPDNfahTRy8O3-NU5Lvgg__',
                edgeSize: edgeSize),
            FlashSaleItem(
                imageUrl:
                    'https://s3-alpha-sig.figma.com/img/32b2/fed3/dd6e97ca36cbcbf5ca57596f7c6547d3?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=eCPjlgBV1bCx9HfJPBWPa6ZYJWyy~JyI2fcMOnaADM5yo8xw~jQXQaT1l1fmHNgdWVSoKwIdTliqgkTzuwQgNfSBYcJRqsWUYuKu-j6lVpLJwB0lLFvNZhI74C6dgM-xFyDeXMVC~9zNkn6aR3K2vGOwzz4R9~GQR-zRmkrpFgFhBIRZHKwRIelMwQCk4XNhD829TA8Xd3HE4ClRe~7zRl1XTD047Asc0SxlUOBFUp5IDH0M3QG6dKa-kOmT30Sg472pvvyw2WJs4Rt6hwyJkq3G4bEJBkJsmRK6szkfO58MlIbY9wssfr9QAGvd2hHvJEoLRMapVY1WLpeERXdAwA__',
                edgeSize: edgeSize),
            FlashSaleItem(
                imageUrl:
                    'https://s3-alpha-sig.figma.com/img/3a39/f1d1/d23c65e543db966efd9955c99cf0a27a?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=W06m4DO17BulZgNSH2MOtpqXx1ir3TgBg4VwvnawGZk-lMM8C4zGSP1vL5z-aOCJh19-PUnMYkzL2d9RV2xgjJwXR2F3JjrY02BG7Jlip3MrmqbnB4QgIV-9luWmucU2vyVcLYNY0AlvSDmS7ib6h0JCVHJYAZcSHSmazJ0ekrwxv3Dzqreei5UxrAEVxyaYRMWwsEVFd-AxLRsjS6lDmPy7izs5V7uNmnd4CA2JNKFuSox7e3YTTDZzCbXKrImGev3rqGQoij1HyeT21VFfv4wsrUTx3bdVUqsfUSQnVL95dg3ukzU1WgB7PXD-QJCDOHn8-UrDqHMexdQthIW6PA__',
                edgeSize: edgeSize),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlashSaleItem(
                imageUrl:
                    'https://s3-alpha-sig.figma.com/img/337a/22ae/49b350434fc9e50a9abb7351559ff374?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Xm73g8DSdSRlGDpa-uHZtf~bd8sikY269DLyTQ4xN412aKgDRQ8yG8~KARXRSXy7fMzqpLBpoZwwSvKiQnb7~-imM2OWV~xqIjKhkb9dMFHhkIf7ZSQVDoroK~wcUqHViqahO1f0DVqE5DpS8MTMgQlwcVvLzNV9v3dGEZ9zC1IvLbv9X6raFGbatBizdBAYJIPC7Lhv~WiJpu3MV6Ox-vkyPweSJiJPe3uTgW6EOkimHXJcZDqxjZXd3pZzdXgbf0BD86b25zJCNOi~ZmwmbVSa8rrcSrKBtQthn0fxLQSOdBX97FUVW3CKzLar2wgk0v2qx96CGNMRch2~tx431g__',
                edgeSize: edgeSize),
            FlashSaleItem(
                imageUrl:
                    'https://s3-alpha-sig.figma.com/img/902c/2ed6/848fbde49066a7244b1f4197b721c175?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=s5oG0yei9ia8nOXG7nS-6vS2dJnX0Yf8lvNk7-DsTRb396KWOtp15soV1XB7a8GwJWZ6BkvlJWyXVmzv8Sra~KyYiTQmRTIXThXfQdNicFvAYEGXKJ6gg~eKlgqPeNyGjKQOe~Rn16jXYh0YWZP46OKfoiZi3~eY1NVXQj3KYYqLmMlAtQP-kEPhBesnV5dGFUvSjNzqLJLkAbN~ayzImpZlM-qf76sI7a~FCEQDnSuRAz4Vf3g7CfP80YYQcDCsLr8IuyVeCRI4ANlvjczGqVkGo3FLM1zAyaKnIu7iLrqKxIrtNWNOwNL~hWm~xwQvNYTB2ojhRPmToehz~LLKig__',
                edgeSize: edgeSize),
            FlashSaleItem(
                imageUrl:
                    'https://s3-alpha-sig.figma.com/img/cc41/14d5/27454b7282c49edc81b76bb6c1314605?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=XtQtJbGP~nCm3G1oFisDBgjyJRPab9LpuCXa3O17nJWJsXzFFq1vegOsYOIgrwXgmP85IuGeGkeJM1dad75YCdJxEfjsVZxL1F5EykqM3JpMtX-KoLDH6lP1eLw3VLw7nllnFiUq8RQ1kL927cPJX6A8kWOU5a4sEKSqU3sf0V6PSMOgwstnGI2-GdxxtSpV1CpLEZq8Za-M0ZEDEo95u0selz5RQ6jZUOSzzFUIAQk~orCMnzQEMwM8ZGwK94wj-89Sc-OEE7AXyagOl0oRmEpfrmsbBDAH0f5r3g9LUP2OKKCzPh9jVfYxEj3qY40XuGbLZ-ZGnaIztG95lO8-Aw__',
                edgeSize: edgeSize),
          ],
        ),
      ],
    );
  }
}

class TopProducts extends StatelessWidget {
  const TopProducts({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double radius = (screenWidth - 32 - 60) / 5;
    return Row(
      children: [
        for (int i = 0; i < 9; i++)
          i % 2 == 0
              ? Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withAlpha((0.3 * 255).toInt()),
                        offset: Offset(2, 2),
                        blurRadius: 5.0,
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Image.network(
                      'https://s3-alpha-sig.figma.com/img/8fde/1dd4/694209a582e512582dbd19cc2b269514?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=Te4GVg4JXDyTqbJNTwi8z5NMq-ELqLKM11FYgtKGCSfZDVbv7YLrs9YGlGgysdNpApK3jzjERlLRfjNMWWqDcsCEsaUqxQ9O8sU8FJrV~sP7qop4-7-uiFJ9dv66Oc4sHsVNJEFYDfkLuWlRArvwUyDhN5LOQiRTsDLxHJdQsXcIlaF9Jw2vsTV8~kfqsX6GJZKJMniJvVpP2lJeLOeTEJg0QMI0lWwzKH1JJKT62Zo1gNnQ3TWOzxmSfHleTANX8XU6k3EPMZzAYdxw6CHr1NRZ3Q-p9HWYtjc~clhzs3lagh10XcVUf~Cpso6lCXAEnmUBdvTkL~Ri25M5v8RY0A__',
                      height: radius,
                      width: radius,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : SizedBox(width: 10),
      ],
    );
  }
}

class JustForYou extends StatelessWidget {
  const JustForYou({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double edgeImageSize = (screenWidth - 32 - 26) / 2;

    return Column(
      children: [
        for (int i = 0; i < 3; i++)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int k = 0; k < 2; k++)
                NewItemLayout(
                  imageUrl:
                      'https://s3-alpha-sig.figma.com/img/a83e/a946/c62c6f134effe41537b18c9db6256a82?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=q~GjTZx~V2MLVqftyLFY3CuZZPUELdcfCgXp0JF~~hyWwTNBnaAdoXptI4iy2htZH3JPxSXoAYE7KzhbY~aab4DJyoAI59US7eYNnaGgUbRr7CBYl6iRhD12tdrdh4f12lPuYt4Ao~DWK0wJ5qpuS4Lh-RiuTv7e6I4BiWdXy47HxXQ11~hOC~nj5At~~Jsm~iBZuHSCCAB7v3Pjhnskwm9UUccKVo-WoYDzB3qbAPVO5-O5zzqbWUN1tHATEqv04NuLtj5p85eSJaTs127QV4emX6revGmhjNamc1uWm92O3jTlFKGLg7~9dp4AwJAiojNCzrjlpLbA6xbDOdt9Dg__',
                  title: 'Áo thun',
                  price: '100.000đ',
                  edgeImageSize: edgeImageSize,
                ),
            ],
          )
      ],
    );
  }
}
