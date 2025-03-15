import 'package:flutter/material.dart';
import 'package:nectar/core/utils/widgets/custom_button.dart';
import 'package:nectar/core/utils/widgets/custom_scaffold.dart';
import 'package:nectar/features/main_screen/presentation/pages/main_view.dart';
import 'package:sizer/sizer.dart';

class SignUpView extends StatefulWidget {
  static const routeName = '/signup';
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Center(
                child: Image.asset(
                  'assets/images/LogoBar.png',
                  height: 56,
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Enter your credentials to continue',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff7C7C7C),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Username',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff7C7C7C),
                ),
              ),
              TextField(),
              SizedBox(
                height: 24,
              ),
              Text(
                'Email',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff7C7C7C),
                ),
              ),
              TextField(),
              SizedBox(
                height: 24,
              ),
              Text(
                'Password',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff7C7C7C),
                ),
              ),
              TextField(
                obscureText: isHidden,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isHidden = !isHidden;
                      });
                    },
                    icon: isHidden
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                    color: Color(0xff7C7C7C),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'By continuing you agree to our Terms of Service \nand Privacy Policy.',
                style: TextStyle(color: Color(0xff7C7C7C)),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: CustomButton(
                  width: 80.w,
                  height:50,
                  text: 'Sign up',
                  backgroundColor: Color(0xff53B175),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(MainView.routeName);
                  },
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xff53B175),
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
