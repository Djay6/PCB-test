import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:psb/app/constants/colors.dart';

class TileItem extends StatelessWidget {
  const TileItem({
    super.key,
    required this.isSelected,
    required this.title,
  });
  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: isSelected ? Colors.white : null,
        child: Column(
          mainAxisAlignment: isSelected
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            SizedBox(),
            SizedBox(
              width: MediaQuery.of(context).size.width * .15,
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: isSelected ? AppColors.primary : Colors.white,
                  ),
                ),
              ),
            ),
            if (isSelected)
              Container(
                color: AppColors.primary,
                height: 2,
                width: MediaQuery.of(context).size.width * .10,
              )
          ],
        ));
  }
}
