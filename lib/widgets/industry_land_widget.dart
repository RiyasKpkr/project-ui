import 'package:flutter/material.dart';

class IndustrylandWidget extends StatelessWidget {
  const IndustrylandWidget({
    Key? key,
    required this.size,
    required this.borderColor,
    required this.iconColor,
    required this.textColor,
    required this.ContainerColor,
  }) : super(key: key);
  final Color borderColor;
  final Size size;
  final Color iconColor;
  final Color textColor;
  final Color ContainerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: ContainerColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: borderColor,
          // color: Colors.grey,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/stack_icon.png',
            width: 40,
            color: iconColor,
            // color: Colors.black54,
          ),
          Text(
            'Industry \n   land',
            style: TextStyle(
              color: textColor
              // color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
