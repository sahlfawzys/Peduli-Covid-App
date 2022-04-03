import 'package:flutter/cupertino.dart';
import 'package:peduli_covid/widgets/small_text.dart';

import '../utils/colors.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconAndTextWidget({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.mainColor10,
              ),
              child: Icon(
                icon,
                color: AppColors.mainColor30,
                size: 40,
              )),
          SizedBox(
            height: 5,
          ),
          Column(
            children: [
              SmallText(
                text: text,
                color: AppColors.mainColor30,
                align: TextAlign.center,
                size: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
