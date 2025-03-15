import 'package:flutter/material.dart';
import 'package:nectar/features/favorite/data/models/favorite_model.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({super.key, required this.favoriteList});

  final FavoriteModel favoriteList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16),
        Row(
          children: [
            Image.asset(
              favoriteList.imageUrl,
              height: 40,
              width: 40,
            ),
            SizedBox(width: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  favoriteList.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  favoriteList.weight,
                  style: TextStyle(
                    color: Color(0xFF7C7C7C),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              '\$${favoriteList.price}',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            SizedBox(
              width: 16,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          ],
        ),
        SizedBox(height: 16),
        Divider()
      ],
    );
  }
}
