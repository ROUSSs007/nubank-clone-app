import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class MyCards extends StatelessWidget {
  const MyCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Container(
          padding: const EdgeInsets.only(
            left: defaultPadding,
            right: defaultPadding,
            top: defaultPadding * 0.8,
            bottom: defaultPadding * 0.8,
          ),
          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: defaultPadding * 0.5),
                child: Icon(Icons.smartphone_rounded),
              ),
              Text(
                "Meus Cartões",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
