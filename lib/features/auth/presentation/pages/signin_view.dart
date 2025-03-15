import 'package:flutter/material.dart';
import 'package:nectar/core/utils/widgets/custom_button.dart';
import 'package:nectar/features/auth/presentation/pages/number_view.dart';
import 'package:sizer/sizer.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});
  static const routeName = '/signIn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/signin.png',
              height: 45.h,
              width: 100.w,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get your groceries\n with nectar',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(NumberView.routeName);
                      },
                      overlayColor: WidgetStatePropertyAll(Colors.white),
                      child: Expanded(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icons/flag.png',
                              height: 24,
                            ),
                            SizedBox(width: 10),
                            Text(
                              '+880',
                              style: TextStyle(fontSize: 14.sp),
                            ),
                          ],
                        ),
                      )),
                  Divider(),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Text(
                      'Or connect with social media',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: Color(0xff828282),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  CustomButton(
                    onPressed: () {},
                    backgroundColor: Color.fromARGB(255, 241, 10, 10),
                    text: 'Continue with Google',
                    width: 100.w,
                    icon: Icons.g_mobiledata,
                    iconColor: Colors.white,
                    height: 8.h,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    onPressed: () {},
                    icon: Icons.facebook,
                    backgroundColor: Color(0xff4A66AC),
                    text: 'Continue with Facebook',
                    iconColor: Colors.white,
                    width: 100.w,
                    height: 8.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
