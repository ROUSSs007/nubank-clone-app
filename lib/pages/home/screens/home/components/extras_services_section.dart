import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants.dart';

class ExtrasServicesSection extends StatelessWidget {
  const ExtrasServicesSection({
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
            const ExtrasTitle(title: 'Acompanhe também'),
            ExtrasButton(
              function: () {},
              text: 'Assistente de pagamentos',
              svgPath: 'assets/vectors/stocks.svg',
            ),
            ExtrasButton(
              function: () {},
              text: 'Meu Pedacinho do Nubank',
              svgPath: 'assets/vectors/smartphone.svg',
            ),
          ],
        ),
      ),
    );
  }
}

class ExtrasTitle extends StatelessWidget {
  const ExtrasTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}

class ExtrasButton extends StatelessWidget {
  const ExtrasButton({
    Key? key,
    required this.svgPath,
    required this.text,
    required this.function,
  }) : super(key: key);

  final String svgPath, text;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Padding(
        padding: const EdgeInsets.only(bottom: defaultPadding * 0.5),
        child: Container(
          padding: const EdgeInsets.only(
            left: defaultPadding * 0.8,
            right: defaultPadding * 0.8,
            top: defaultPadding * 0.6,
            bottom: defaultPadding * 0.6,
          ),
          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: SvgPicture.asset(
                  svgPath,
                  height: 20,
                  width: 20,
                ),
              ),
              Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
