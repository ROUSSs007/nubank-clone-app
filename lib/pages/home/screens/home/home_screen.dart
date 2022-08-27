// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../constants.dart';
import 'components/account_summary.dart';
import 'components/changes_info_section.dart';
import 'components/credit_card_section.dart';
import 'components/extras_services_section.dart';
import 'components/know_more_section.dart';
import 'components/my_cards.dart';
import 'components/services_section.dart';
import 'components/tips_section.dart';
import '../../../../components/topbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyBehavior(),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(debugLabel: 'HomePage-Scroll-Controller'),
        child: Column(
          children: [
            TopBarHome(),
            const SizedBox(height: defaultPadding),
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                AccountSummary(),
                const ServicesSection(),
                const MyCards(),
                const TipsSection(),
                const CreditCardSection(),
                const ExtrasServicesSection(),
                const ChangesInformationSection(),
                const KnowMoreSection(),
                const SizedBox(height: defaultPadding * 3)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return child;
  }
}
