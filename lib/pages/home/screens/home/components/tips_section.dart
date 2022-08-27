import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../api/data/tips_data.dart';
import '../../../../../constants.dart';

class TipsSection extends StatelessWidget {
  const TipsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
      scrollDirection: Axis.horizontal,
      controller: ScrollController(debugLabel: 'Tips-controller'),
      padding:
          const EdgeInsets.only(left: defaultPadding, bottom: defaultPadding),
      child: Row(
        children: demoTipsData
            .map((e) => TipCard(
                preffixText: e.preffixText,
                textLink: e.textLink,
                suffixText: e.suffixText,
                functionOnTap: e.functionOnTap))
            .toList(),
      ),
    );
  }
}

class TipCard extends StatelessWidget {
  const TipCard({
    Key? key,
    required this.preffixText,
    required this.textLink,
    required this.suffixText,
    required this.functionOnTap,
  }) : super(key: key);

  final String preffixText, textLink, suffixText;
  final VoidCallback functionOnTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: defaultPadding * 0.75),
      child: Container(
        height: 80,
        width: 270,
        decoration: BoxDecoration(
          color: greyColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: RichText(
                overflow: TextOverflow.ellipsis,
                textScaleFactor: 1.1,
                textWidthBasis: TextWidthBasis.longestLine,
                maxLines: 2,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: preffixText,
                      style: const TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                    TextSpan(
                        text: textLink,
                        style: const TextStyle(color: primaryColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = functionOnTap),
                    TextSpan(
                      style: const TextStyle(color: Colors.black87),
                      text: suffixText,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
