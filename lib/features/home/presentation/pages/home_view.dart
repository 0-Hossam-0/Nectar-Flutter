import 'package:flutter/material.dart';
import 'package:nectar/core/utils/widgets/custom_search.dart';
import 'package:nectar/features/home/data/datasources/foods.dart';
import 'package:nectar/features/home/presentation/widgets/foods_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = '/homeView';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              customAppBar(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: CustomSearch(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Image.asset('assets/images/banner.png'),
              ),
              SizedBox(
                height: 24,
              ),
              FoodsContainer(
                text: 'Exclusive Offer',
                foodList: exclusiveOffer,
              ),
              SizedBox(
                height: 24,
              ),
              FoodsContainer(
                text: 'Best Selling',
                foodList: bestSelling,
              ),
              SizedBox(
                height: 24,
              ),
              FoodsContainer(
                text: 'Groceries',
                foodList: groceries,
              ),
              SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column customAppBar() {
    return Column(
      // spacing: 8,
      children: [
        SizedBox(
          height: 12,
        ),
        Image.asset(
          'assets/images/LogoBar.png',
          width: 32,
        ),
            SizedBox(
              height: 30,
            ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // spacing: 8,
          children: [
            Image.asset(
              'assets/icons/locationIcon.png',
              width: 16,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Dhaka, Banassre',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff4C4F4D)),
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
