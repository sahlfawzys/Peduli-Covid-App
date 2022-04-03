import 'package:flutter/cupertino.dart';

import '../utils/dimensions.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  FontWeight fontWeight;
  double size;
  TextOverflow overFlow;
  BigText(
      {Key? key,
      required this.text,
      this.color = const Color.fromARGB(255, 0, 0, 0),
      this.size = 20,
      this.fontWeight = FontWeight.w400,
      this.overFlow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      maxLines: 1,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: (size == 0) ? Dimensions.font20 : size,
        fontWeight: fontWeight,
      ),
    );
  }
}
