// import 'dart:async';

import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: widget.size.height * 0.19,
          width: widget.size.width * 0.45,
          decoration: BoxDecoration(
            // color: Colors.green,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/office-image.jpg',
                  // height: size.height * 0.1,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Woxro Office',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Rs.2500/Hr',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 1),
                child: Row(
                  children: [
                    Icon(
                      Icons.room,
                      color: Colors.green,
                    ),
                    Text('Thissur')
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 10,
          top: 5,
          child: InkWell(
            onTap: () {
              setState(() {
                isClicked = !isClicked;
              });
            },
            child: CircleAvatar(
              radius: 15,
              backgroundColor:
                  isClicked == true ? Colors.white24 : Colors.white,
              child: Icon(
                Icons.favorite,
                color: isClicked == true ? Colors.white : Colors.red,
                size: 20,
              ),
            ),
          ),
        )
      ],
    );
  }
}
