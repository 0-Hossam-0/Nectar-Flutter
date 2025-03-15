import 'package:flutter/material.dart';
import 'package:nectar/features/cart/data/models/cart_model.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cart});

  final CartModel cart;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 16),
        Row(
          children: [
            Image.asset(
              cart.imageUrl,
              width: 72,
            ),
            SizedBox(width: 32),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cart.name,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.close,
                        color: Color(
                          0xFFB3B3B3,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    cart.weight,
                    style: TextStyle(
                      color: Color(0xFF7C7C7C),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      countItem(icon: Icons.remove),
                      SizedBox(width: 12),
                      Text(
                        '1',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 12),
                      countItem(
                        icon: Icons.add,
                        colorIcon: Color(0xff53B175),
                      ),
                      Spacer(),
                      Text(
                        '\$${cart.price}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Divider(),
      ],
    );
  }

  Row countItem({required IconData icon, Color? colorIcon}) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Color(0xffE2E2E2)),
          ),
          child: Icon(
            icon,
            size: 20,
            color: colorIcon ?? Colors.black,
          ),
        ),
      ],
    );
  }
}
