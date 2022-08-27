import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/unlock_button.dart';

class LockScreen extends StatelessWidget {
  const LockScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        color: const Color(0xFF830AD1),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(),
              SvgPicture.asset(
                "assets/vectors/nubank-logo-2021.svg",
                color: const Color(0xFFFFFFFF),
                clipBehavior: Clip.antiAlias,
                height: screenSize.width * 0.35,
              ),
              UnlockButton(
                text: "Usar senha do celular",
                width: screenSize.width,
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
