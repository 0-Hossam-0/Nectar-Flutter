import 'package:flutter/material.dart';
import 'package:nectar/core/utils/widgets/custom_button.dart';
import 'package:nectar/features/main_screen/presentation/pages/main_view.dart';

class OrderFailedSheet extends StatelessWidget {
  const OrderFailedSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            Image.asset('assets/images/orderFailed.png', width: 220),
            SizedBox(height: 48),
            Text(
              "Oops! Order Failed",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              "Something went terribly wrong.",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff7C7C7C),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 60),
            CustomButton(
              backgroundColor: Color(0xff53B175),
              text: "Please Try Again",
              onPressed: () => Navigator.of(context).pop(),
            ),
            SizedBox(height: 24),
            TextButton(
              onPressed: () => Navigator.of(context).pushReplacementNamed(MainView.routeName),
              child: Text(
                "Back to home",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
