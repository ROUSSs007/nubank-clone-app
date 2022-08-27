import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CardOfPlannerScreen extends StatelessWidget {
  const CardOfPlannerScreen({
    Key? key,
    required this.text,
    required this.textLink,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final String text, textLink;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: defaultPadding * 0.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        color: greyColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: defaultPadding * 0.6,
          horizontal: defaultPadding * 0.8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon),
                const SizedBox(width: defaultPadding * 0.5),
                Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: Colors.black),
                ),
              ],
            ),
            GestureDetector(
              onTap: onTap,
              child: Text(
                textLink,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: primaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
