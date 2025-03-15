import 'package:flutter/material.dart';
import 'package:nectar/core/utils/widgets/custom_button.dart';
import 'package:nectar/core/utils/widgets/custom_scaffold.dart';
import 'package:nectar/features/cart/presentation/widgets/error.dart';
import 'package:nectar/features/main_screen/presentation/pages/main_view.dart';

class OrderAcceptView extends StatelessWidget {
  const OrderAcceptView({super.key});
  static const routeName = '/orderAcceptedView';

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/acceptOrder.png', width: 280),
            SizedBox(height: 66),
            Text(
              "Your Order has been accepted",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              "Your items have been placed and are on \nit’s way to being processed",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF7C7C7C),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 120),
            CustomButton(
              onPressed: () => showDialog(context: context, builder: (context) => OrderFailedSheet()),
              backgroundColor: Color(0xff53B175),
              text: 'Track Order',
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () => Navigator.of(context).pushReplacementNamed(MainView.routeName),
              child: Text(
                "Back to home",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
