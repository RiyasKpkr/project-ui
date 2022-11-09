
import 'package:flutter/material.dart';

class IndustrylandWidget extends StatelessWidget {
  const IndustrylandWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.12,
      width: size.width * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/stack_icon.png',
            width: size.width * 0.18,
            color: Colors.black54,
          ),
          Text(
            'Industry \n   land',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
