import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:nectar/core/utils/widgets/custom_scaffold.dart';
import 'package:nectar/features/auth/presentation/pages/verification_view.dart';
import 'package:nectar/features/auth/presentation/widgets/custom_forward_button.dart';

class NumberView extends StatelessWidget {
  const NumberView({super.key});
  static const routeName = '/numberView';

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back_ios),
            ),
            SizedBox(
              height: 66,
            ),
            Text(
              'Enter your mobile number',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Mobile Number',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff7C7C7C),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            IntlPhoneField(
              cursorColor: Color(0xff53B175),
              cursorWidth: 2,
              initialCountryCode: 'EG',
              decoration: InputDecoration(
                hintText: 'Phone Number',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff53B175),
                    width: 2,
                  ),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomForwardButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(VerificationView.routeName);
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
