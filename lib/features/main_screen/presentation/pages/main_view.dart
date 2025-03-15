import 'package:flutter/material.dart';
import 'package:nectar/features/cart/presentation/pages/mycart.dart';
import 'package:nectar/features/explore/presentation/pages/explore_view.dart';
import 'package:nectar/features/favorite/presentation/pages/favourite_view.dart';
import 'package:nectar/features/home/presentation/pages/home_view.dart';
import 'package:nectar/features/profile/presentation/pages/account.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const String routeName = '/mainView';

  @override
  MainViewState createState() => MainViewState();
}

class MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    ExploreView(),
    CartView(),
    FavouriteView(),
    ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color(0xff53B175),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/shopIcon.png',
              color: _selectedIndex == 0 ? Color(0xFF53B175) : Colors.black,
              width: 24,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/exploreIcon.png',
              color: _selectedIndex == 1 ? Color(0xFF53B175) : Colors.black,
              width: 24,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/cartIcon.png',
              color: _selectedIndex == 2 ? Color(0xFF53B175) : Colors.black,
              width: 24,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/favIcon.png',
              color: _selectedIndex == 3 ? Color(0xFF53B175) : Colors.black,
              width: 24,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/accountIcon.png',
              color: _selectedIndex == 4 ? Color(0xFF53B175) : Colors.black,
              width: 24,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
