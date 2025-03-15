import 'package:flutter/material.dart';
import 'package:nectar/core/utils/widgets/food_item.dart';
import 'package:nectar/features/dairy/data/datasources/dairy_data.dart';
import 'package:nectar/features/filters/presentation/pages/filters.dart';

class DairyView extends StatelessWidget {
  const DairyView({super.key});
  static const routeName = '/dairyView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text(
          'Dairy & Eggs',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(FiltersView.routeName);
            },
            icon: Image.asset(
              'assets/icons/filterIcon.png',
              width: 20,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.sizeOf(context).width ~/ 170,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            childAspectRatio: 0.6,
          ),
          itemCount: dairy.length,
          itemBuilder: (BuildContext context, int index) {
            return FoodItem(
              food: dairy[index],
            );
          },
        ),
      ),
    );
  }
}
