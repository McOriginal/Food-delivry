import 'package:flutter/material.dart';
import 'package:food_delivry/common/color_extension.dart';

class ViewAllTitleRow extends StatelessWidget {
  const ViewAllTitleRow({super.key, required this.title, required this.onView});
  final String title;
  final VoidCallback onView;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        TextButton(
            onPressed: onView,
            child: Text(
              "Voir tous",
              style: TextStyle(
                color: TColor.primary,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ))
      ],
    );
  }
}
