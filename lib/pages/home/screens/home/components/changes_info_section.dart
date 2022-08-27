import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class ChangesInformationSection extends StatelessWidget {
  const ChangesInformationSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 2, color: greyColor),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.help_outline_rounded, color: primaryColor),
            GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Algumas coisas mudaram de lugar',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 18, color: primaryColor, height: 1.8),
                  ),
                  IconButton(
                    constraints: const BoxConstraints(),
                    onPressed: () {},
                    padding: const EdgeInsets.all(0),
                    color: Colors.black45,
                    iconSize: 28,
                    icon: const Icon(Icons.keyboard_arrow_right_rounded),
                  ),
                ],
              ),
            ),
            const SizedBox(height: defaultPadding * 0.5),
            Text(
              'Seguros e investimentos agora estão em uma nova aba. Mude de áreas tocando nos ícones na parte inferior do aplicativo.',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
