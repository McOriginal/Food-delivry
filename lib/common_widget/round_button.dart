import 'package:flutter/material.dart';
import 'package:food_delivry/common/color_extension.dart';

enum RoundButtonType {
  bgPrimary,
  textPrimay,
}

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.fontSize = 16,
    this.type = RoundButtonType.bgPrimary,
  });
  final VoidCallback onPressed;
  final String title;
  final double fontSize;
  final RoundButtonType type;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: type == RoundButtonType.bgPrimary
              ? null
              : Border.all(color: TColor.primary, width: 1),
          color:
              type == RoundButtonType.bgPrimary ? TColor.primary : TColor.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: type == RoundButtonType.bgPrimary
                ? TColor.white
                : TColor.primary,
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
