import 'package:flutter/material.dart';
import 'package:psb/app/constants/colors.dart';

class ExpansionTitle extends StatelessWidget {
  const ExpansionTitle(
      {super.key, required this.subTitle, required this.title});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 5,
          height: 50,
          color: Colors.blue,
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            Text(subTitle),
          ],
        )
      ],
    );
  }
}
