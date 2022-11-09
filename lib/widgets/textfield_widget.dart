
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget( {
    Key? key,
    required this.labelText,
  }) : super(key: key);

  final Widget labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          // labelText: 'Property Title',
          label: labelText,
          labelStyle: TextStyle(color: Colors.grey),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

