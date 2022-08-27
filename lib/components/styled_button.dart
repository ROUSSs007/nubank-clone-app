import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({
    Key? key,
    required this.text,
    required this.width,
    this.height = 40,
    this.backgroundColor = Colors.white,
    this.foregroundColor = Colors.black,
    required this.buttonFunction,
  }) : super(key: key);

  final String text;
  final double width, height;
  final Color backgroundColor, foregroundColor;
  final VoidCallback buttonFunction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: buttonFunction,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          foregroundColor: MaterialStateProperty.all(foregroundColor),
        ),
        child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            height: 1.2,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
