import 'package:flutter/material.dart';

class CustomForwardButton extends StatelessWidget {
  const CustomForwardButton({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff53B175),
          shape: CircleBorder(),
          minimumSize: Size(67, 67)),
      child: Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
        size: 24,
      ),
    );
  }
}

