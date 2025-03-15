import 'package:flutter/material.dart';
import 'package:nectar/core/utils/widgets/custom_button.dart';
import 'package:nectar/features/auth/presentation/widgets/custom_back_button.dart';
import 'package:nectar/features/home/data/models/food_model.dart';
import 'package:sizer/sizer.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, this.food});

  static const routeName = '/product_details';
  final FoodModel? food;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _productCount = 1;
  int _starsRate = 0;
  bool _isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF2F3F2),
        leading: const CustomBackButton(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/shareIcon.png',
              width: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 224,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              padding: EdgeInsets.all(32),
              child: Image.asset(
                widget.food!.imageUrl,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.food!.name,
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          iconSize: 15.sp * 1.5,
                          icon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isFavorite = !_isFavorite;
                                });
                              },
                              icon: _isFavorite
                                  ? Icon(Icons.favorite)
                                  : Icon(Icons.favorite_border))),
                    ],
                  ),
                  Text(
                    widget.food!.quantity,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffBDBDBD),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      IconButton(
                          iconSize: 20.sp,
                          onPressed: () {
                            setState(() {
                              if (_productCount != 1) {
                                _productCount = _productCount - 1;
                              }
                            });
                          },
                          icon: Icon(Icons.remove)),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: Color(0xffE2E2E2)),
                        ),
                        child: Text(
                          _productCount.toString(),
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      IconButton(
                          iconSize: 18.sp,
                          onPressed: () {},
                          icon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _productCount = 1 + _productCount;
                                });
                              },
                              icon: Icon(Icons.add))),
                      Spacer(),
                      Text(
                        '\$${widget.food!.price}',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Product Detail',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                    style: TextStyle(color: Color(0xff7C7C7C), fontSize: 12.sp),
                  ),
                  Divider(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nutrition',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'Reviews',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _starsRate = 5;
                            });
                          },
                          icon: _starsRate >= 5
                              ? Icon(Icons.star, size: 18.sp)
                              : Icon(Icons.star_border, size: 18.sp),
                          color: Color(0xffF3603F)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _starsRate = 4;
                            });
                          },
                          icon: _starsRate >= 4
                              ? Icon(Icons.star, size: 18.sp)
                              : Icon(Icons.star_border, size: 18.sp),
                          color: Color(0xffF3603F)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _starsRate = 3;
                            });
                          },
                          icon: _starsRate >= 3
                              ? Icon(Icons.star, size: 18.sp)
                              : Icon(Icons.star_border, size: 18.sp),
                          color: Color(0xffF3603F)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _starsRate = 2;
                            });
                          },
                          icon: _starsRate >= 2
                              ? Icon(Icons.star, size: 18.sp)
                              : Icon(Icons.star_border, size: 18.sp),
                          color: Color(0xffF3603F)),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _starsRate = 1;
                            });
                          },
                          icon: _starsRate >= 1
                              ? Icon(Icons.star, size: 18.sp)
                              : Icon(Icons.star_border, size: 18.sp),
                          color: Color(0xffF3603F)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                      onPressed: () {},
                      backgroundColor: Color(0xff53B175),
                      text: 'Add To Basket'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
