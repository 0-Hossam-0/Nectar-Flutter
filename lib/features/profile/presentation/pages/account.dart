import 'package:flutter/material.dart';
import 'package:nectar/core/utils/widgets/custom_button.dart';
import 'package:nectar/features/auth/presentation/pages/login_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  static const routeName = '/profileView';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/images/Profile.png'),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Afsar Hossen",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.mode_edit_outlined,
                                color: Color(0xff53B175),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "lmshuvo97@gmail.com",
                          style: TextStyle(
                            color: Color(0xff7C7C7C),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                menuItem(
                  imageUrl: 'assets/icons/ordersIcon.png',
                  title: "Orders",
                ),
                menuItem(
                  imageUrl: 'assets/icons/detailsIcon.png',
                  title: "My Details",
                ),
                menuItem(
                  imageUrl: 'assets/icons/deliceryAddress.png',
                  title: "Delivery Address",
                ),
                menuItem(
                  imageUrl: 'assets/icons/paymentIcon.png',
                  title: "Payment",
                ),
                menuItem(
                  imageUrl: 'assets/icons/promoIcon.png',
                  title: "Promo Cord",
                ),
                menuItem(
                  imageUrl: 'assets/icons/notifecationsIcon.png',
                  title: "Notifications",
                ),
                menuItem(
                  imageUrl: 'assets/icons/helpIcon.png',
                  title: "Help",
                ),
                menuItem(
                  imageUrl: 'assets/icons/aboutIcon.png',
                  title: "About",
                ),
                Divider(),
                SizedBox(
                  height: 32,
                ),
                CustomButton(
                  onPressed: () {
                  Navigator.of(context).pushReplacementNamed(LoginView.routeName);
                  },
                  backgroundColor: Color(0xffF2F3F2),
                  text: 'Log Out',
                  textColor: Color(0xff53B175),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column menuItem({required String imageUrl, required String title}) {
    return Column(
      children: [
        Divider(),
        ListTile(
          leading: Image.asset(
            imageUrl,
            width: 20,
          ),
          title: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 16,
          ),
        ),
      ],
    );
  }
}