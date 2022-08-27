// ignore_for_file: unused_field
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:nubank_clone_app/pages/home/main.dart';

class UnlockButton extends StatefulWidget {
  const UnlockButton({
    Key? key,
    required this.text,
    required this.width,
    this.height = 50,
    this.backgroundColor = Colors.white,
    this.foregroundColor = Colors.black,
  }) : super(key: key);

  final String text;
  final double width, height;
  final Color backgroundColor, foregroundColor;

  @override
  State<UnlockButton> createState() => _UnlockButtonState();
}

class _UnlockButtonState extends State<UnlockButton> {
  final LocalAuthentication auth = LocalAuthentication();

  _SupportState _supportState = _SupportState.unknown;
  bool _isAuthenticating = false;
  String _authorized = 'Not Authorized';

  @override
  void initState() {
    super.initState();
    auth.isDeviceSupported().then(
          (bool isSupported) => setState(
            () {
              if (isSupported = true) {
                _supportState = _SupportState.supported;
              } else {
                _supportState = _SupportState.unsupported;
              }
            },
          ),
        );
  }

  Future<void> _authenticate() async {
    bool authenticated = false;

    try {
      setState(() {
        _isAuthenticating = true;
        _authorized = 'Authenticating';
      });

      authenticated = await auth.authenticate(
        localizedReason: 'Let OS determine authentication method',
        options: const AuthenticationOptions(
          stickyAuth: true,
        ),
      );

      setState(() {
        _isAuthenticating = false;
      });
    } on PlatformException catch (e) {
      //print(e);

      setState(() {
        _isAuthenticating = false;
        _authorized = 'Error - ${e.message}';
      });
      return;
    }

    if (!mounted) {
      return;
    }

    setState(() {
      _authorized = authenticated ? 'Authorized' : 'Not Authorized';
    });

    if (_authorized == 'Authorized') {
      Navigator.of(context).pushReplacement(_createRoute());
    }
  }

  // Future<void> _authenticateWithBiometrics() async {
  //   bool authenticated = false;
  //
  //   try {
  //     setState(() {
  //       _isAuthenticating = true;
  //       _authorized = "Authenticating";
  //     });
  //
  //     authenticated = await auth.authenticate(
  //       localizedReason: 'Comprove your identity to authenticate',
  //       options: const AuthenticationOptions(
  //         stickyAuth: true,
  //         biometricOnly: true,
  //       ),
  //     );
  //
  //     setState(() {
  //       _isAuthenticating = false;
  //     });
  //
  //     print('Authorized');
  //   } on PlatformException catch (e) {
  //     print(e);
  //     setState(() {
  //       _isAuthenticating = false;
  //       _authorized = 'Error - ${e.message}';
  //     });
  //     return;
  //   }
  //
  //   if (!mounted) {
  //     return;
  //   }
  //
  //   final String message = authenticated ? 'Authorized' : 'Not Authorized';
  //
  //   setState(() {
  //     _authorized = message;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: ElevatedButton(
          onPressed: _authenticate,
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
            backgroundColor: MaterialStateProperty.all(widget.backgroundColor),
            foregroundColor: MaterialStateProperty.all(widget.foregroundColor),
          ),
          child: Text(widget.text),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
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

enum _SupportState {
  unknown,
  supported,
  unsupported,
}
