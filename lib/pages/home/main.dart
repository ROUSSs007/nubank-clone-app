import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nubank_clone_app/constants.dart';

import 'screens/home/home_screen.dart';
import 'screens/planner/planner_screen.dart';
import 'screens/shop/shop_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    HomeScreen(),
    PlannerScreen(),
    ShopScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          screens[currentIndex],
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 2,
                    color: Colors.black12.withOpacity(0.05),
                  ),
                ),
              ),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                  child: BottomNavigationBar(
                    iconSize: 24,
                    selectedItemColor: primaryColor,
                    unselectedItemColor: Colors.black.withOpacity(0.25),
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    elevation: 0,
                    backgroundColor: Colors.white.withOpacity(0.8),
                    type: BottomNavigationBarType.fixed,
                    currentIndex: currentIndex,
                    // ignore_for_file: prefer_const_constructors
                    onTap: (index) => setState(() => currentIndex = index),
                    // ignore: prefer_const_literals_to_create_immutables
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.import_export_outlined),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.attach_money_rounded),
                        label: 'Planner',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.shopping_bag_outlined),
                        label: 'Shop',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
