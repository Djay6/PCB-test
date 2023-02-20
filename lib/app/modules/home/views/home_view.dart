import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:psb/app/modules/home/views/widgets/expansion_body.dart';
import 'package:psb/app/modules/home/views/widgets/expansion_title.dart';
import 'package:psb/app/modules/home/views/widgets/loan_status_card.dart';
import 'package:psb/app/modules/home/views/widgets/tileitem.dart';
import 'package:psb/app/modules/home/views/widgets/transaction_list.dart';

import '../../../constants/assets.dart';
import '../../../constants/colors.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .05),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [AppColors.secondary, AppColors.primary],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight),
                ),
                height: 50,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const TileItem(
                      title: 'Dashboard',
                      isSelected: true,
                    ),
                    SizedBox(
                      height: 50,
                      child: Container(
                        margin: const EdgeInsets.only(right: 2),
                        height: 20,
                        width: 2,
                        color: Colors.white,
                      ),
                    ),
                    const TileItem(
                      title: 'Transaction',
                      isSelected: false,
                    ),
                    Container(
                      height: 20,
                      padding: const EdgeInsets.only(right: 2),
                      width: 2,
                      color: Colors.white,
                    ),
                    const TileItem(
                      title: 'Profile',
                      isSelected: false,
                    ),
                    Container(
                      height: 20,
                      padding: const EdgeInsets.only(right: 2),
                      width: 2,
                      color: Colors.white,
                    ),
                    const TileItem(
                      title: 'Raise Dispute',
                      isSelected: false,
                    ),
                  ],
                ),
              ),
              Container(
                height: 20,
                color: Colors.grey.shade300,
              ),
              Container(
                color: Colors.white,
                height: 8,
              ),
              Container(
                color: Colors.white,
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'GSTIN: ',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                        children: const [
                          TextSpan(
                              text: '29ABCD1234F3Z9',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700))
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      width: 16,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'State: ',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                        ),
                        children: const [
                          TextSpan(
                              text: 'Gujarat',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                color: Colors.white,
                child: Flex(
                  direction: MediaQuery.of(context).size.width > 920
                      ? Axis.horizontal
                      : Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    LoanStatusCard(
                      amount: '40000',
                      iconPath: Asseticons.outstanding,
                      qty: '02',
                      title: 'Outstanding',
                    ),
                    LoanStatusCard(
                      amount: '40000',
                      iconPath: Asseticons.outstanding,
                      qty: '02',
                      title: 'Overdue',
                    ),
                    LoanStatusCard(
                      amount: '42640',
                      iconPath: Asseticons.outstanding,
                      qty: '05',
                      title: 'Repaid',
                    ),
                    LoanStatusCard(
                      amount: '41600',
                      iconPath: Asseticons.outstanding,
                      qty: '01',
                      title: 'disbursed',
                    ),
                  ],
                ),
              ),
              const ExpansionTile(
                collapsedBackgroundColor: Colors.white,
                backgroundColor: Colors.white,
                tilePadding: EdgeInsets.zero,
                title: ExpansionTitle(
                  title: 'Pending Disbursment (02)',
                  subTitle: 'Load application Completed disbursment in process',
                ),
                children: [
                  ExpansionBody(
                    amount: '40500',
                    invoiceNumber: '28',
                    name: 'Amazon Pvt Ltd',
                    stage: 'Disbursment process',
                  )
                ],
              ),
              const ExpansionTile(
                collapsedBackgroundColor: Colors.white,
                tilePadding: EdgeInsets.zero,
                title: ExpansionTitle(
                  title: 'Pending Disbursment (02)',
                  subTitle: 'Load application Completed disbursment in process',
                ),
              ),
              Container(
                height: 20,
                color: Colors.grey.shade300,
              ),
              Container(
                color: Colors.white,
                width: Get.width,
                // height: MediaQuery.of(context).size.height * .25,
                child: Flex(
                  direction: MediaQuery.of(context).size.width > 920
                      ? Axis.horizontal
                      : Axis.vertical,
                  children: [
                    Container(
                        padding: EdgeInsets.all(16),
                        width: MediaQuery.of(context).size.width > 920
                            ? MediaQuery.of(context).size.width * .45
                            : MediaQuery.of(context).size.width * .90,
                        child: const TransactionList()),
                    Container(
                      width: MediaQuery.of(context).size.width > 920
                          ? MediaQuery.of(context).size.width * .45
                          : MediaQuery.of(context).size.width * .90,
                      padding: EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [AppColors.secondary, AppColors.primary],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            constraints: BoxConstraints(maxWidth: 440),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Finance other eligible invoice',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  '(Share other eligible invoices and get loan offers)',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white),
                                    onPressed: () {},
                                    child: Text(
                                      'Finance Another invoices',
                                      style:
                                          TextStyle(color: AppColors.primary),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * .1,
                              child: SvgPicture.asset(AssetImages.mobile))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade300,
              )
            ],
          ),
        ),
      ),
    );
  }
}
