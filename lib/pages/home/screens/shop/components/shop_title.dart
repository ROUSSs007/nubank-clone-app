import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class ShopTitle extends StatelessWidget {
  const ShopTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 0, bottom: defaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shopping',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: primaryColor),
          ),
          const SizedBox(height: defaultPadding * 0.8),
          Text(
            'Faça compras e aproveite descontos.',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
