import 'package:flutter/material.dart';
import 'package:food_delivry/common/color_extension.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.onTap,
    required this.title,
    required this.iconImage,
    required this.isSelected,
  });

  final VoidCallback onTap;
  final String title;
  final String iconImage;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            iconImage,
            width: 15,
            height: 15,
            color: isSelected ? TColor.primary : TColor.placeholder,
          ),
          Text(
            title,
            style: TextStyle(
              color: isSelected ? TColor.primary : TColor.placeholder,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
