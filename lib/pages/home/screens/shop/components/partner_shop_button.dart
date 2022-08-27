import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class PartnerShopButton extends StatelessWidget {
  const PartnerShopButton({
    Key? key,
    required this.image,
    required this.partnerName,
    required this.shortDescription,
    required this.promoEmphasis,
  }) : super(key: key);

  final String image, partnerName, shortDescription, promoEmphasis;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(partnerName);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: defaultPadding * 0.5),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(right: defaultPadding * 0.8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius * 0.6),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    partnerName,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          height: 1,
                          fontSize: 18,
                        ),
                  ),
                  const SizedBox(height: defaultPadding * 0.25),
                  Text(
                    shortDescription,
                    textAlign: TextAlign.start,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium
                        ?.copyWith(height: 1.2, color: Colors.black38),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 2,
                child: Text(
                  promoEmphasis,
                  textAlign: TextAlign.end,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontSize: 16),
                )),
          ],
        ),
      ),
    );
  }
}
