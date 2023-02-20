import 'package:flutter/material.dart';
import 'package:psb/app/constants/colors.dart';
import 'package:psb/app/modules/home/views/widgets/transation_tile.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Recent Transactions',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                'See All',
                style: TextStyle(color: AppColors.primary),
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  const TransactionTile(
                      amount: '40000',
                      date: '19 Aug 2022',
                      status: 'Repaid',
                      title: 'flipkart Pvt Ltd.'),
                  if (index != 2) Divider()
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
