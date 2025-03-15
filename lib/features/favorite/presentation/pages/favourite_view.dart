import 'package:flutter/material.dart';
import 'package:nectar/core/utils/widgets/custom_button.dart';
import 'package:nectar/features/favorite/data/datasources/favorite_data.dart';
import 'package:nectar/features/favorite/presentation/widgets/favourite_item.dart';
import 'package:nectar/features/cart/presentation/widgets/error.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});
  static const routeName = '/favouriteView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Favourite',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: favoriteList.length,
                itemBuilder: (BuildContext context, int index) {
                  return FavoriteItem(
                    favoriteList: favoriteList[index],
                  );
                },
              ),
            ),
            CustomButton(
              onPressed: () => showDialog(context: context, builder: (context) => OrderFailedSheet()),
              backgroundColor: Color(0xff53B175),
              text: 'Add all to cart',
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
