import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import 'card_of_planner.dart';

class YourMoneySection extends StatelessWidget {
  const YourMoneySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          const SizedBox(height: defaultPadding),
          CardOfPlannerScreen(
            icon: Icons.auto_graph_rounded,
            text: 'investimentos',
            textLink: 'Começar',
            onTap: () {},
          ),
          CardOfPlannerScreen(
            icon: Icons.currency_bitcoin_rounded,
            text: 'Cripto',
            textLink: 'Começar',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
