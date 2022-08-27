import 'package:flutter/material.dart';
import 'package:nubank_clone_app/pages/profileAndSettings/profile_and_settings.dart';

import '../../../../../constants.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: accentColor,
      ),
      margin: const EdgeInsets.only(left: defaultPadding * 0.6),
      child: IconButton(
        color: Colors.white,
        onPressed: () {
          Navigator.of(context).push(_createRoute());
        },
        icon: const Icon(Icons.person_outline_rounded),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const ProfileAndSettings(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(-1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
