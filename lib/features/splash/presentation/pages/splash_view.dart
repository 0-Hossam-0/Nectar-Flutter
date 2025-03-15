import 'package:flutter/material.dart';
import 'package:nectar/features/onbording/presentation/pages/onbording_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(OnBoardingView.routeName);
    });
    return Scaffold(
      backgroundColor: Color(0xff53B175),
      body: Center(
        child: Image.asset('assets/images/logo.png', width: 270,),
      ),
    );
  }
}