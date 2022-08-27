// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../components/topbar.dart';
import '../../../../constants.dart';
import 'components/section_one_shop.dart';
import 'components/section_two_shop.dart';
import 'components/shop_title.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      controller: ScrollController(debugLabel: 'HomePage-Scroll-Controller'),
      child: Column(
        children: [
          TopBarHome(showWelcome: false),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                ShopTitle(),
                SizedBox(height: defaultPadding * 1.5),
                SectionOneShop(),
                SizedBox(height: defaultPadding),
                SectionTwoShop(),
                SizedBox(height: defaultPadding * 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
