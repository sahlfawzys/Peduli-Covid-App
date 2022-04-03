import 'package:flutter/material.dart';
import 'package:peduli_covid/widgets/big_text.dart';

class BoxContainer extends StatelessWidget {
  final String title;
  final String total_case;
  Color color;

  BoxContainer({
    Key? key,
    required this.title,
    required this.total_case,
    this.color = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigText(
            text: title,
            fontWeight: FontWeight.w800,
            size: 16,
            color: Colors.white,
          ),
          SizedBox(
            height: 30,
          ),
          BigText(
            text: total_case,
            fontWeight: FontWeight.bold,
            size: 25,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
