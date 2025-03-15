import 'package:flutter/material.dart';
import 'package:nectar/features/auth/presentation/pages/login_view.dart';
import 'package:nectar/features/auth/presentation/pages/number_view.dart';
import 'package:nectar/features/auth/presentation/pages/select_location.dart';
import 'package:nectar/features/auth/presentation/pages/sign_up_view.dart';
import 'package:nectar/features/auth/presentation/pages/signin_view.dart';
import 'package:nectar/features/auth/presentation/pages/verification_view.dart';
import 'package:nectar/features/cart/presentation/pages/mycart.dart';
import 'package:nectar/features/cart/presentation/widgets/bottom_sheet.dart';
import 'package:nectar/features/cart/presentation/widgets/check_out_item.dart';
import 'package:nectar/features/dairy/presentation/pages/dairy_view.dart';
import 'package:nectar/features/explore/presentation/pages/explore_view.dart';
import 'package:nectar/features/home/presentation/pages/home_view.dart';
import 'package:nectar/features/main_screen/presentation/pages/main_view.dart';
import 'package:nectar/features/onbording/presentation/pages/onbording_view.dart';
import 'package:nectar/features/product_details/presentation/pages/product_details.dart';
import 'package:nectar/features/splash/presentation/pages/splash_view.dart';
import 'package:nectar/features/beverages/presentation/pages/beverages_view.dart';
import 'package:nectar/features/filters/presentation/pages/filters.dart';
import 'package:nectar/features/cart/presentation/pages/order_accepted.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const Nectar());
}

class Nectar extends StatelessWidget {
  const Nectar({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext , Orientation , ScreenType ) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          SplashView.routeName: (context) => const SplashView(),
          OnBoardingView.routeName: (context) => const OnBoardingView(),
        //   SigninView.routeName: (context) => const SigninView(),
        //  NumberView.routeName: (context) => const NumberView(),
        //  VerificationView.routeName: (context) => const VerificationView(),
         // SelectLocationView.routeName: (context) => const SelectLocationView(),
          LoginView.routeName: (context) => const LoginView(),
          SignUpView.routeName: (context) => const SignUpView(),
          MainView.routeName: (context) => const MainView(),
          ProductDetails.routeName: (context) => const ProductDetails(),
          BeveragesView.routeName: (context) => const BeveragesView(),
          DairyView.routeName: (context) => const DairyView(),
          FiltersView.routeName: (context) => const FiltersView(),
          OrderAcceptView.routeName: (context) => const OrderAcceptView(),
        },
        initialRoute: SplashView.routeName,
        // home: DairyView(),
      );
    });
  }
}
