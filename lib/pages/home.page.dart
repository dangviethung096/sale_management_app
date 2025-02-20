import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sale_management_app/constants/app_colors.dart';
import 'package:sale_management_app/constants/text_style.dart';
import 'package:sale_management_app/layout/button.layout.dart';
import 'package:sale_management_app/layout/category_item.layout.dart';
import 'package:sale_management_app/layout/category_title_in_account.layout.dart';
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
                        title: 'Sản phẩm 1',
                        price: '100.000đ',
                      ),
                      NewItemLayout(
                        imageUrl:
                            'https://s3-alpha-sig.figma.com/img/29fa/e184/053666ddc17b71621107f3fdefffc22d?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=c7TC8a0DLsdrAK9rEN9bCintJ9-BnkFdBkg6zjtAVmdW8oAm~rqidYm2rODiussxGHYMBgoc2PMYjwsyelFehtKdD541cDlQrUd7nM8ipEWOcMKxrcyBaDJS6nSeF8lTrBv12wPSMGPsjbJLAZ5vAL4se4aL9WiKEJPSJmabne4P2jrsPU18T55pYtkJ1RadoH3mCPwbeJ8sETX8SgaPtub9akp4F7yc2JoIxGf9rOToWPjLMai0Pt43xQNzpUZylEjsJFPW9M5w0WFiVQJsDTOmTIkkQmzTe6KiyEuDodp7QwWm6DWicLenG89sWRHrt6KjGbasru9OZXHo9NhkBw__',
                        title: 'Sản phẩm 2',
                        price: '100.000đ',
                      ),
                      NewItemLayout(
                        imageUrl:
                            'https://s3-alpha-sig.figma.com/img/6a6a/7129/1fde341b60adcf3abb0c9f834bcf0398?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=KZwi8NWx5lczKXud6HI4xb5DmDic9kGd1pAnzDnS1zfeJWuosSrgjQWndLE~sqRmSCmYxLTxCVq0KOqjNJsd8FuBC8m~aGsQ0uFIBQ0BCzYi2btHgSZcty0tSH~47VDucuxM2PETG6hic2nZ0wVYmECFV8tS9parcrCcp2jaHZkCOqYnP~Rzw735ib7aWTlryfMaKpBNb9FwjidK109CVMb-dIpLBRhpV-RglNVZelpY770DbCVcuSTp3h-Te60CZxH9SRlBz~Rbk8S7uu2~DhKLN-qGkKq2AfWS1c714Ntkp3VCpW2FWRGIDNxWdUQtrnnp-gd8t4S~5V0wgNZWpQ__',
                        title: 'Sản phẩm 3',
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
                      MostPopularItemLayout(
                          imageUrl:
                              'https://s3-alpha-sig.figma.com/img/677a/92ac/90b8bdb19f422b68f2b4af999172ef45?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=FvAkZURceDMpUKM9bHnNqfEY0mCoMngSl9l5nn3CW78ALmdtz2tfNp1tEyqhjyrdqxV28L~kZZAJBc-NIQBmi-clAK3qulroI6jmkHLPV7ZdwFJ9~IR32CmZ4ZSqpj8h~l4mUyCRKDXiBtbhHfxAUdVi2766YsXZWNMJrpPn-KkP8bHaLRp3Dn0oUmqFMihUkI1N6MVQlLxM9iCvw57ytm9a2BCX1BG68~f-ss0LBHrcgOxono~Zj3uSrdv-JgERngesUcLcFTV0kW6unFZcKfY6-nt~NxK2ze3Uu~A-7anjF0UkgFuWibcTJ7djCkK86y4nTgJHWuGVZSXdu9~hsg__',
                          status: 'Bán chạy'),
                      MostPopularItemLayout(
                          imageUrl:
                              'https://s3-alpha-sig.figma.com/img/e4a7/fe8f/bdc5579f712678cfdcb997655d89f238?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=qe~cmErj7fkgwgVChg1fEKrdI-z4HTHl70kYoKge8s8mVQIvl04w-3z0gGAMNusmHFFaEonrQ8ewdjQyipti5tBiVtPwnVGQDrNX1gm3MVKsCacFKRMDgVI-hqe6aydZHrrTq4WWGW0iNw~KRuuOs89~YF7bub2EerVCZkmHHwM29xnqSfkcHde89GR5DqGD1LZO0V3C7xLvxpntnftLiNDQFu2yk8qQiqw0~MPxmeYSL07m7SHzMG42ghGLfricdKSMkcXG2AF3WqnMQyKwirTpzBfp9Drd7B~6bZi1CI3VfoONJlNMwxCuDfCl6fVCThqxMKSSVDKjXZzZfBRYFQ__',
                          status: 'Bán chạy'),
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
                SizedBox(
                  height: 750,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          ),
                          CategoryItemLayout(
                            numberItem: 4,
                            linkImages: [
                              'https://s3-alpha-sig.figma.com/img/6a6a/7129/1fde341b60adcf3abb0c9f834bcf0398?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=KZwi8NWx5lczKXud6HI4xb5DmDic9kGd1pAnzDnS1zfeJWuosSrgjQWndLE~sqRmSCmYxLTxCVq0KOqjNJsd8FuBC8m~aGsQ0uFIBQ0BCzYi2btHgSZcty0tSH~47VDucuxM2PETG6hic2nZ0wVYmECFV8tS9parcrCcp2jaHZkCOqYnP~Rzw735ib7aWTlryfMaKpBNb9FwjidK109CVMb-dIpLBRhpV-RglNVZelpY770DbCVcuSTp3h-Te60CZxH9SRlBz~Rbk8S7uu2~DhKLN-qGkKq2AfWS1c714Ntkp3VCpW2FWRGIDNxWdUQtrnnp-gd8t4S~5V0wgNZWpQ__',
                              'https://s3-alpha-sig.figma.com/img/3ad6/5535/3543163e7923ed0879a6a43a2d0874d2?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=f8G-x-tzIaYFJc26WQCShf1mi-xhX1CB~DY7YdvE-ylE5-dg--1eGadrMuffWlp3PXP0wemWd6Q2BZ2HGHr2x8Lo6hXk50ulKWlS7cBWNpjM33aH2tv~ymF-R5ScLUq2RG00ayOj-5QCSH6pBlwkJvb0T6AyXJO7j3E0VVniFJHUC-nlzk1HDgzPKDqD80bjqyxvZ3aUgMHCEY-jyPfBjjTfdhkgIVm1iIABk-JDwcZJgfUQMDbGqNHN2CQ6pxQEEb3gArucCdvi3s36JJz8oo1teP2NrnA64m1KCoWldqO2dElYx7MlixQARGYx1rlibDlOtrClqYfwXBmFYlAKoA__',
                              'https://s3-alpha-sig.figma.com/img/4255/c3d5/5af4d2bf5fb32d96303a1780d9473aed?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=rSbcYxTkwQR8-d1D9rtbmUZrcCxYlfFWGHnSvr-QPH8J7CY4djK-liZoi9CirGCqpAJRcoIHohKzJ4pEIiw9MnBJfXu8EKsrkrcw9m9RD1EotjOfo6AuwX8glXM7n~CwM-zqUzywxcyek1tvUPNnUU~OX4Xyen8yuGmf0eT7uomMu-z5eXgjLJOWQbVhzVKD3fzxegY1TEZiyYOE-jDuPJJXgNYmQX4Y5eEuYHMbRzihpPOvFeJGXvIl~e0O1fhweGHCsV3DBOWpp53MKkl~quLMwETUi4gA6F6agT74F3ZnDs0qDHdMOKklhgujOXwPrApUh8~ojEKecbEELuVbqw__',
                              'https://s3-alpha-sig.figma.com/img/d0ca/85b1/3b70dabc3ccf004f28f528775bf37ec8?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=ECqvwvXad5LiZWydXqFU96rluOJuBz3M3lm6X5TYCgB2mTvAz~wkmswVdJvu25HIMZUph~B86oFuiLLulukHM0FgmAhyjS0EfO3KSR9PmHdaX7zLpyma6qy9qCpo89rGjQTJBIJ94oSin9mukhXAIdLLbZ9G4fo0qeHVB0ekNGOb2mjSNEjddaKFtxQMEJ67jGwPSuRgWBJ0jg33N-kDVWbl5tlY9ZvUPvlI0bXTW6CpVlghSU1S90GJmz4n06sYLthDK5uSC4Z4IayG5iY8eoLdcMop4yQ0isxziLD~8TqEYomJ6N2MVx4UW90VMcnCRi~5TiheZdcgYlWhpPRK5w__',
                            ],
                            title: 'Giày dép',
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CategoryItemLayout(
                            numberItem: 4,
                            linkImages: [
                              'https://s3-alpha-sig.figma.com/img/6a6a/7129/1fde341b60adcf3abb0c9f834bcf0398?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=KZwi8NWx5lczKXud6HI4xb5DmDic9kGd1pAnzDnS1zfeJWuosSrgjQWndLE~sqRmSCmYxLTxCVq0KOqjNJsd8FuBC8m~aGsQ0uFIBQ0BCzYi2btHgSZcty0tSH~47VDucuxM2PETG6hic2nZ0wVYmECFV8tS9parcrCcp2jaHZkCOqYnP~Rzw735ib7aWTlryfMaKpBNb9FwjidK109CVMb-dIpLBRhpV-RglNVZelpY770DbCVcuSTp3h-Te60CZxH9SRlBz~Rbk8S7uu2~DhKLN-qGkKq2AfWS1c714Ntkp3VCpW2FWRGIDNxWdUQtrnnp-gd8t4S~5V0wgNZWpQ__',
                              'https://s3-alpha-sig.figma.com/img/3ad6/5535/3543163e7923ed0879a6a43a2d0874d2?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=f8G-x-tzIaYFJc26WQCShf1mi-xhX1CB~DY7YdvE-ylE5-dg--1eGadrMuffWlp3PXP0wemWd6Q2BZ2HGHr2x8Lo6hXk50ulKWlS7cBWNpjM33aH2tv~ymF-R5ScLUq2RG00ayOj-5QCSH6pBlwkJvb0T6AyXJO7j3E0VVniFJHUC-nlzk1HDgzPKDqD80bjqyxvZ3aUgMHCEY-jyPfBjjTfdhkgIVm1iIABk-JDwcZJgfUQMDbGqNHN2CQ6pxQEEb3gArucCdvi3s36JJz8oo1teP2NrnA64m1KCoWldqO2dElYx7MlixQARGYx1rlibDlOtrClqYfwXBmFYlAKoA__',
                              'https://s3-alpha-sig.figma.com/img/4255/c3d5/5af4d2bf5fb32d96303a1780d9473aed?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=rSbcYxTkwQR8-d1D9rtbmUZrcCxYlfFWGHnSvr-QPH8J7CY4djK-liZoi9CirGCqpAJRcoIHohKzJ4pEIiw9MnBJfXu8EKsrkrcw9m9RD1EotjOfo6AuwX8glXM7n~CwM-zqUzywxcyek1tvUPNnUU~OX4Xyen8yuGmf0eT7uomMu-z5eXgjLJOWQbVhzVKD3fzxegY1TEZiyYOE-jDuPJJXgNYmQX4Y5eEuYHMbRzihpPOvFeJGXvIl~e0O1fhweGHCsV3DBOWpp53MKkl~quLMwETUi4gA6F6agT74F3ZnDs0qDHdMOKklhgujOXwPrApUh8~ojEKecbEELuVbqw__',
                              'https://s3-alpha-sig.figma.com/img/d0ca/85b1/3b70dabc3ccf004f28f528775bf37ec8?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=ECqvwvXad5LiZWydXqFU96rluOJuBz3M3lm6X5TYCgB2mTvAz~wkmswVdJvu25HIMZUph~B86oFuiLLulukHM0FgmAhyjS0EfO3KSR9PmHdaX7zLpyma6qy9qCpo89rGjQTJBIJ94oSin9mukhXAIdLLbZ9G4fo0qeHVB0ekNGOb2mjSNEjddaKFtxQMEJ67jGwPSuRgWBJ0jg33N-kDVWbl5tlY9ZvUPvlI0bXTW6CpVlghSU1S90GJmz4n06sYLthDK5uSC4Z4IayG5iY8eoLdcMop4yQ0isxziLD~8TqEYomJ6N2MVx4UW90VMcnCRi~5TiheZdcgYlWhpPRK5w__',
                            ],
                            title: 'Túi xách',
                          ),
                          CategoryItemLayout(
                            numberItem: 4,
                            linkImages: [
                              'https://s3-alpha-sig.figma.com/img/6a6a/7129/1fde341b60adcf3abb0c9f834bcf0398?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=KZwi8NWx5lczKXud6HI4xb5DmDic9kGd1pAnzDnS1zfeJWuosSrgjQWndLE~sqRmSCmYxLTxCVq0KOqjNJsd8FuBC8m~aGsQ0uFIBQ0BCzYi2btHgSZcty0tSH~47VDucuxM2PETG6hic2nZ0wVYmECFV8tS9parcrCcp2jaHZkCOqYnP~Rzw735ib7aWTlryfMaKpBNb9FwjidK109CVMb-dIpLBRhpV-RglNVZelpY770DbCVcuSTp3h-Te60CZxH9SRlBz~Rbk8S7uu2~DhKLN-qGkKq2AfWS1c714Ntkp3VCpW2FWRGIDNxWdUQtrnnp-gd8t4S~5V0wgNZWpQ__',
                              'https://s3-alpha-sig.figma.com/img/3ad6/5535/3543163e7923ed0879a6a43a2d0874d2?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=f8G-x-tzIaYFJc26WQCShf1mi-xhX1CB~DY7YdvE-ylE5-dg--1eGadrMuffWlp3PXP0wemWd6Q2BZ2HGHr2x8Lo6hXk50ulKWlS7cBWNpjM33aH2tv~ymF-R5ScLUq2RG00ayOj-5QCSH6pBlwkJvb0T6AyXJO7j3E0VVniFJHUC-nlzk1HDgzPKDqD80bjqyxvZ3aUgMHCEY-jyPfBjjTfdhkgIVm1iIABk-JDwcZJgfUQMDbGqNHN2CQ6pxQEEb3gArucCdvi3s36JJz8oo1teP2NrnA64m1KCoWldqO2dElYx7MlixQARGYx1rlibDlOtrClqYfwXBmFYlAKoA__',
                              'https://s3-alpha-sig.figma.com/img/4255/c3d5/5af4d2bf5fb32d96303a1780d9473aed?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=rSbcYxTkwQR8-d1D9rtbmUZrcCxYlfFWGHnSvr-QPH8J7CY4djK-liZoi9CirGCqpAJRcoIHohKzJ4pEIiw9MnBJfXu8EKsrkrcw9m9RD1EotjOfo6AuwX8glXM7n~CwM-zqUzywxcyek1tvUPNnUU~OX4Xyen8yuGmf0eT7uomMu-z5eXgjLJOWQbVhzVKD3fzxegY1TEZiyYOE-jDuPJJXgNYmQX4Y5eEuYHMbRzihpPOvFeJGXvIl~e0O1fhweGHCsV3DBOWpp53MKkl~quLMwETUi4gA6F6agT74F3ZnDs0qDHdMOKklhgujOXwPrApUh8~ojEKecbEELuVbqw__',
                              'https://s3-alpha-sig.figma.com/img/d0ca/85b1/3b70dabc3ccf004f28f528775bf37ec8?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=ECqvwvXad5LiZWydXqFU96rluOJuBz3M3lm6X5TYCgB2mTvAz~wkmswVdJvu25HIMZUph~B86oFuiLLulukHM0FgmAhyjS0EfO3KSR9PmHdaX7zLpyma6qy9qCpo89rGjQTJBIJ94oSin9mukhXAIdLLbZ9G4fo0qeHVB0ekNGOb2mjSNEjddaKFtxQMEJ67jGwPSuRgWBJ0jg33N-kDVWbl5tlY9ZvUPvlI0bXTW6CpVlghSU1S90GJmz4n06sYLthDK5uSC4Z4IayG5iY8eoLdcMop4yQ0isxziLD~8TqEYomJ6N2MVx4UW90VMcnCRi~5TiheZdcgYlWhpPRK5w__',
                            ],
                            title: 'Đồ tắm',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                CategoryTitleInAccountLayout(title: 'Flash Sale'),
                SizedBox(
                  height: 16,
                ),
                Text('Flash Sale Items'),
                SizedBox(
                  height: 28,
                ),
                CategoryTitleInAccountLayout(title: 'Top products'),
                SizedBox(
                  height: 16,
                ),
                Text('Top product Items'),
                SizedBox(
                  height: 28,
                ),
                CategoryTitleInAccountLayout(title: 'Just For You'),
                SizedBox(
                  height: 16,
                ),
                Text('Just for you items'),
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
