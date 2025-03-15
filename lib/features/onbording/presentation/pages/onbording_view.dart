import 'package:flutter/material.dart';
import 'package:nectar/features/auth/presentation/pages/login_view.dart';
import 'package:sizer/sizer.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const routeName = '/onbording';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/onbording.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Spacer(),
              Image.asset(
                'assets/icons/icon.png',
                width: 50,
              ),
              SizedBox(
                height: 36,
              ),
              Text(
                'Welcome \n to our store',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'Ger your groceries in as fast as one hour',
                style: TextStyle(
                  fontSize: 15.sp,
                  color: Color(0xffFCFCFC),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      minimumSize: WidgetStatePropertyAll(Size(
                          MediaQuery.sizeOf(context).width * 0.7,
                          MediaQuery.sizeOf(context).height * 0.07)),
                      backgroundColor:
                          WidgetStatePropertyAll(Color(0xff53B175))),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(LoginView.routeName);
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
