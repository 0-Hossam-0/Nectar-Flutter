import 'package:flutter/material.dart';
import 'package:nectar/core/utils/widgets/custom_button.dart';
import 'package:nectar/features/cart/presentation/pages/order_accepted.dart';
import 'package:nectar/features/cart/presentation/widgets/check_out_item.dart';

class CheckOutBottomSheet extends StatelessWidget {
  const CheckOutBottomSheet({
    super.key,
    required this.totalCost,
  });

  final double totalCost;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Checkout",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 16),
            CheckoutItem(
              title: 'Delivery',
              subtitle: 'Select Method',
            ),
            CheckoutItem(
              title: 'Pament',
              subtitle: 'Pay Pal',
            ),
            CheckoutItem(
              title: 'Promo Code',
              subtitle: 'Pick discount',
            ),
            CheckoutItem(
              title: 'Total Cost',
              subtitle: '\$${totalCost.toStringAsFixed(2)}',
            ),
            Divider(),
            SizedBox(height: 12),
            Text(
              "By placing an order you agree to our Terms And Conditions",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff7C7C7C),
              ),
            ),
            SizedBox(height: 28),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xff53B175))),
                onPressed: () {},
                child: Center(
                  child: Text(
                    'Place Order',
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ))
            // CustomButton(onPressed: () => Navigator.of(context).pushNamed(OrderAcceptView.routeName) , backgroundColor: Color(0xff53B175), text: 'Place Order'),
          ],
        ),
      ),
    );
  }
}
