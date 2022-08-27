import 'package:flutter/material.dart';

import '../../../../../api/data/shop_data.dart';
import '../../../../../constants.dart';
import 'partner_shop_button.dart';

class SectionOneShop extends StatelessWidget {
  const SectionOneShop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            'Tem de tudo',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const SizedBox(height: defaultPadding * 1.5),
        ...demoShopData
            .map((e) => PartnerShopButton(
                image: e.image,
                partnerName: e.partnerName,
                shortDescription: e.shortDescription,
                promoEmphasis: e.promoEmphasis))
            .toList()
            .sublist(0, 3),
        GestureDetector(
          onTap: () {
            print('Click: mostrar mais...');
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
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          defaultRadius * 0.6,
                        ),
                        color: greyColor,
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: const Icon(Icons.more_horiz_rounded),
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
                        'Mostrar mais ofertas',
                        textAlign: TextAlign.start,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  height: 1,
                                  fontSize: 18,
                                ),
                      ),
                    ],
                  ),
                ),
                const Expanded(flex: 2, child: SizedBox())
              ],
            ),
          ),
        )
      ],
    );
  }
}
