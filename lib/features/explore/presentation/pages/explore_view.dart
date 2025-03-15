import 'package:flutter/material.dart';
import 'package:nectar/core/utils/widgets/custom_search.dart';
import 'package:nectar/features/explore/data/datasources/explore_data.dart';
import '../widgets/category.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});
  static const routeName = '/exploreView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Find Products',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomSearch(),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.8),
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return FoodCategory(
                    category: categories[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
