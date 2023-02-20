import 'package:flutter/material.dart';
import 'package:psb/app/constants/colors.dart';

class ExpansionBody extends StatelessWidget {
  const ExpansionBody({
    super.key,
    required this.amount,
    required this.invoiceNumber,
    required this.name,
    required this.stage,
  });
  final String name;
  final String invoiceNumber;
  final String stage;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            width: 5,
            height: 193,
            color: AppColors.primary,
          ),
          SizedBox(
            height: 193,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  name,
                  style: TextStyle(color: AppColors.primary),
                ),
                Text(
                  'Invoice Number: $invoiceNumber',
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .1,
                      child: Text(
                        'Stage',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Text(stage)
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .1,
                      child: Text(
                        'Loan Amount',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Text(amount)
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
