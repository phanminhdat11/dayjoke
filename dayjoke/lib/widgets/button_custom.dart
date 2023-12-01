import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({
    super.key,
    required this.title,
    this.ontap,
    required this.width,
    required this.color,
  });

  final String title;
  final double width;
  final Color? color;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width,
        height: 40,
        color: color,
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
