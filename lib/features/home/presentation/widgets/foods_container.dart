import 'package:flutter/material.dart';
import 'package:nectar/core/utils/widgets/food_item.dart';
import 'package:nectar/features/home/data/models/food_model.dart';
import 'package:nectar/features/product_details/presentation/pages/product_details.dart';

class FoodsContainer extends StatelessWidget {
  const FoodsContainer({
    super.key,
    required this.text,
    required this.foodList,
  });

  final String text;
  final List<FoodModel> foodList;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff53B175),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: foodList.length,
            itemBuilder: (context, index) => Row(
              children: [
                SizedBox(width: 20),
                FoodItem(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductDetails(
                          food: foodList[index],
                        ),
                      ),
                    );
                  },
                  food: foodList[index],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
