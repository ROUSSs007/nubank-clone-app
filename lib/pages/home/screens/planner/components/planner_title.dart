import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class PlannerTitleSection extends StatelessWidget {
  const PlannerTitleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding:
          const EdgeInsets.only(left: defaultPadding, bottom: defaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Planejamento',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: primaryColor),
          ),
          const SizedBox(height: defaultPadding * 0.8),
          Text(
            'Organize sua vida financeira para o futuro',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
