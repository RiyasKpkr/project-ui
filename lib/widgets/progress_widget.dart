import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({
    Key? key,
    required this.size,
    required this.text,
    required this.value,
  }) : super(key: key);

  final Size size;
  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.12,
      width: double.infinity,
      color: Colors.grey[100],
      child: Padding(
        padding: const EdgeInsets.only(left: 35),
        child: Row(
          children: [
            CircularPercentIndicator(
              radius: 40,
              lineWidth: 10,
              animation: true,
              // fillColor: Colors.transparent,
              circularStrokeCap: CircularStrokeCap.butt,
              backgroundColor: Colors.white,
              center: Text(
                text,
                // '1/4'
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              progressColor: Colors.indigo[900],
              // percent: 0.25,
              percent: value,
            ),
            SizedBox(
              width: 15,
            ),
            Container(
              height: 39,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Property',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Progress Details  >',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
