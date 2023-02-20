import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:psb/app/constants/assets.dart';
import 'package:psb/app/constants/colors.dart';

class LoanStatusCard extends StatelessWidget {
  const LoanStatusCard({
    super.key,
    required this.amount,
    required this.iconPath,
    required this.title,
    required this.qty,
  });
  final String title;
  final String amount;
  final String iconPath;
  final String qty;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .2,
      padding: EdgeInsets.all(16),
      color: AppColors.lightBlue,
      width: MediaQuery.of(context).size.width > 920
          ? MediaQuery.of(context).size.width * .2
          : MediaQuery.of(context).size.width * .4,
      constraints: BoxConstraints(minWidth: 200),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        SvgPicture.asset(iconPath),
        Text(
          '₹ $amount',
          style: TextStyle(color: AppColors.primary),
        ),
        Container(
          height: 2,
          color: Colors.blue,
          width: MediaQuery.of(context).size.width * .05,
        ),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 8,
              ),
              Text(qty)
            ],
          ),
        )
      ]),
    );
  }
}
