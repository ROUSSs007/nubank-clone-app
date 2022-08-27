import 'package:flutter/material.dart';

import '../../../../../components/topbar.dart';
import '../../../../../constants.dart';

class AccountSummary extends StatefulWidget {
  const AccountSummary({
    Key? key,
  }) : super(key: key);

  @override
  State<AccountSummary> createState() => _AccountSummaryState();
}

class _AccountSummaryState extends State<AccountSummary> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: defaultPadding,
        left: defaultPadding,
        right: defaultPadding,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Conta",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              ValueListenableBuilder(
                valueListenable: TopBarHome.showData,
                builder: (context, value, _) {
                  if (value == true) {
                    return const Text('\$10.000,00',
                        style: TextStyle(
                            height: 1.8,
                            fontWeight: FontWeight.w400,
                            fontSize: 18));
                  } else {
                    return const Text('••••',
                        style: TextStyle(
                            height: 1.3,
                            fontWeight: FontWeight.w600,
                            fontSize: 32));
                  }
                },
              ),
            ],
          ),
          IconButton(
            constraints: const BoxConstraints(),
            onPressed: () {},
            padding: const EdgeInsets.all(0),
            color: Colors.black45,
            iconSize: 28,
            icon: const Icon(Icons.keyboard_arrow_right_rounded),
          )
        ],
      ),
    );
  }
}
