import 'package:flutter/material.dart';
import 'package:nectar/core/utils/widgets/custom_scaffold.dart';
import 'package:nectar/features/auth/presentation/pages/select_location.dart';
import 'package:nectar/features/auth/presentation/widgets/custom_back_button.dart';
import 'package:nectar/features/auth/presentation/widgets/custom_forward_button.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({
    super.key,
  });
  static const routeName = '/verificationView';

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBackButton(),
            SizedBox(
              height: 66,
            ),
            Text(
              'Enter your 4-digit code',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Code',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff7C7C7C),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              style: TextStyle(fontSize: 24),
              cursorColor: Color(0xff53B175),
              cursorWidth: 2,
              decoration: InputDecoration(
                hintText: '- - - -',
                hintStyle: TextStyle(fontSize: 24),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff53B175),
                    width: 2,
                  ),
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Resend Code',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff53B175),
                    ),
                  ),
                ),
                CustomForwardButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(SelectLocationView.routeName);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}