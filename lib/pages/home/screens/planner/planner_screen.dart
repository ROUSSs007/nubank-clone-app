import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../components/topbar.dart';
import '../../../../constants.dart';
import 'components/card_of_planner.dart';
import 'components/planner_title.dart';
import 'components/your_money_section.dart';

class PlannerScreen extends StatelessWidget {
  const PlannerScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      controller: ScrollController(debugLabel: 'HomePage-Scroll-Controller'),
      child: Column(
        children: [
          const TopBarHome(showWelcome: false),
          const SizedBox(height: defaultPadding),
          Column(
            children: [
              PlannerTitleSection(),
              YourMoneySection(),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 2, color: greyColor),
                  ),
                ),
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Acompanhe seu dinheiro',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: defaultPadding * 0.5),
                    Text(
                      'Proteção para você cuidar do que importa',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    const SizedBox(height: defaultPadding),
                    CardOfPlannerScreen(
                      icon: CupertinoIcons.heart,
                      text: 'Seguro vida',
                      textLink: 'Conhecer',
                      onTap: () {},
                    ),
                    CardOfPlannerScreen(
                      icon: CupertinoIcons.device_phone_portrait,
                      text: 'Seguro celular',
                      textLink: 'Conhecer',
                      onTap: () {},
                    ),
                    SizedBox(height: defaultPadding * 5),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
