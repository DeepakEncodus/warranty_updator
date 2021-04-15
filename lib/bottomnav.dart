import 'package:flutter/material.dart';
import 'package:notification/Exp.dart';
import 'package:notification/ExpiringProducts.dart';
import 'package:notification/HomePages.dart';
import 'package:notification/Notification.dart';

import 'package:notification/Products.dart';
import 'package:notification/Profile.dart';

import 'AddProdcut.dart';
import 'Search.dart';
import 'allproduct.dart';

//bottom nav foo navigation to diffrent screen using bottom navigation bar
class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  PageController _pageController = PageController();
  List<Widget> _screen = [
    HomePage(),
    Allproduct(),
    AddProduct(),
    ExpiringProducts(),
    Profile(),
  ];
  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    print(selectedIndex);
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF31ACCC),
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/home.png',
              ),
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/application.png',
              ),
              color: Colors.black,
            ),
            label: 'Application',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/add.png',
              ),
              color: Color(0xFF31ACCC),
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/time.png',
              ),
              color: Colors.black,
            ),
            label: 'Time',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                'assets/images/profile.png',
              ),
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
