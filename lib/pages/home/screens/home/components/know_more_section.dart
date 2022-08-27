import 'package:flutter/material.dart';

import '../../../../../api/data/know_more_data.dart';
import '../../../../../components/styled_button.dart';
import '../../../../../constants.dart';

class KnowMoreSection extends StatelessWidget {
  const KnowMoreSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(width: 2, color: greyColor),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: defaultPadding),
              child: Text('Descubra mais',
                  style: Theme.of(context).textTheme.titleMedium),
            ),
            const SizedBox(height: defaultPadding),
            SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              padding: const EdgeInsets.only(left: defaultPadding),
              controller: ScrollController(
                debugLabel: 'KnowMore-ScrollController',
              ),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: demoKnowMoreData
                    .map((e) => KnowMoreCard(
                          imagePath: e.imagePath,
                          title: e.title,
                          text: e.text,
                          function: e.function,
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class KnowMoreCard extends StatelessWidget {
  const KnowMoreCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.text,
    this.buttonText = 'Conhecer',
    required this.function,
  }) : super(key: key);

  final String imagePath, title, text, buttonText;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: defaultPadding * 0.6),
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: 220,
        width: 200,
        decoration: BoxDecoration(
          color: greyColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 95,
              width: 200,
              child: FittedBox(
                alignment: Alignment.center,
                fit: BoxFit.cover,
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  imagePath,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: defaultPadding * 0.5,
                horizontal: defaultPadding * 0.5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 12),
                    child: Text(
                      text,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black45,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  StyledButton(
                    text: buttonText,
                    width: 100,
                    height: 35,
                    buttonFunction: function,
                    backgroundColor: primaryColor,
                    foregroundColor: Colors.white,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
