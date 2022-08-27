import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../api/data/services_data.dart';
import '../../../../../constants.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics:
          const AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
      padding: const EdgeInsets.only(left: defaultPadding),
      scrollDirection: Axis.horizontal,
      controller: ScrollController(
        debugLabel: 'Scroll Controller',
        initialScrollOffset: 0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: demoServiceData
            .map((service) => ServicesIcons(
                  service: service.serviceName,
                  icon: service.iconPath,
                ))
            .toList(),
      ),
    );
  }
}

class ServicesIcons extends StatelessWidget {
  const ServicesIcons({
    Key? key,
    required this.service,
    required this.icon,
  }) : super(key: key);

  final String service, icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: defaultPadding * 0.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(99),
                color: greyColor,
              ),
              child: SvgPicture.asset(
                icon,
                height: 30,
                width: 30,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: SizedBox(
              width: 70,
              child: Text(
                service,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
