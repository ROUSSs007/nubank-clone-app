import 'package:flutter/material.dart';
import 'package:nubank_clone_app/components/topbar.dart';

import '../../../../../components/styled_button.dart';
import '../../../../../constants.dart';

class CreditCardSection extends StatelessWidget {
  const CreditCardSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(width: 2, color: greyColor))),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CrediCardSectionTitle(onTap: () {}),
            const SizedBox(height: defaultPadding),
            const SummaryCreditCardText(
              invoiceStatus: 'fechada',
              invoiceLastDay: 15,
              invoicePrice: 1000,
            ),
            const SizedBox(height: defaultPadding),
            CreditCardSectionButtons(
              functionButton1: () {},
              functionButton2: () {},
            )
          ],
        ),
      ),
    );
  }
}

class CrediCardSectionTitle extends StatelessWidget {
  const CrediCardSectionTitle({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Cartão de crédito',
            style: Theme.of(context).textTheme.titleMedium,
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
    );
  }
}

class SummaryCreditCardText extends StatelessWidget {
  const SummaryCreditCardText({
    Key? key,
    required this.invoiceStatus,
    required this.invoicePrice,
    required this.invoiceLastDay,
  }) : super(key: key);

  final String invoiceStatus;
  final int invoicePrice, invoiceLastDay;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Fatura $invoiceStatus',
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(height: 10),
        ValueListenableBuilder(
            valueListenable: TopBarHome.showData,
            builder: (context, value, _) {
              if (value == true) {
                return Text(
                  currencyFormat.format(invoicePrice).replaceAll('BRL', 'R\$'),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w600),
                );
              } else {
                return const Text(
                  '••••',
                  style: TextStyle(
                      fontSize: 32, fontWeight: FontWeight.w600, height: 1),
                );
              }
            }),
        const SizedBox(height: 10),
        Text(
          'Vencimento dia $invoiceLastDay',
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }
}

class CreditCardSectionButtons extends StatelessWidget {
  const CreditCardSectionButtons({
    Key? key,
    required this.functionButton1,
    required this.functionButton2,
  }) : super(key: key);

  final VoidCallback functionButton1, functionButton2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        StyledButton(
          text: 'Pagar fatura',
          width: 125,
          buttonFunction: functionButton1,
          backgroundColor: Colors.redAccent.shade400,
          foregroundColor: Colors.white,
        ),
        const SizedBox(width: defaultPadding * 0.5),
        StyledButton(
          text: 'Parcelar',
          width: 90,
          buttonFunction: functionButton2,
          backgroundColor: greyColor,
          foregroundColor: Colors.black,
        ),
      ],
    );
  }
}
