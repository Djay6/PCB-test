import 'package:flutter/material.dart';
import 'package:psb/app/constants/colors.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile(
      {super.key,
      required this.amount,
      required this.date,
      required this.status,
      required this.title});
  final String title;
  final String date;
  final String amount;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(color: AppColors.primary, fontSize: 16),
              ),
              Text(
                title,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              )
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Text(
                amount,
                style: TextStyle(color: AppColors.primary, fontSize: 16),
              ),
              Text(
                status,
                style: TextStyle(color: Colors.green, fontSize: 12),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
