import 'package:flutter/material.dart';
import 'package:food_delivry/common/color_extension.dart';

class RoundTextfield extends StatelessWidget {
  const RoundTextfield({
    super.key,
    this.controller,
    required this.hintText,
    this.inputType,
    this.obscureText = false,
    this.bgColor,
    this.left,
  });

  // *************
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? inputType;
  final bool obscureText;
  final Color? bgColor;
  final Widget? left;
// ****************

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor ?? TColor.textfield,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          if (left != null)
            const Padding(
              padding: EdgeInsets.only(left: 15),
              // child: left!,
            ),
          Expanded(
            child: TextField(
              autocorrect: false,
              controller: controller,
              keyboardType: inputType,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                prefixIcon: left,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: TColor.placeholder,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundTitleTextfield extends StatelessWidget {
  const RoundTitleTextfield({
    super.key,
    this.controller,
    required this.hintText,
    required this.title,
    this.inputType,
    this.obscureText = false,
    this.bgColor,
    this.left,
  });

  // *************
  final TextEditingController? controller;
  final String hintText;
  final String title;
  final TextInputType? inputType;
  final bool obscureText;
  final Color? bgColor;
  final Widget? left;
// ****************

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: bgColor ?? TColor.textfield,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          if (left != null)
            const Padding(
              padding: EdgeInsets.only(left: 15),
              // child: left!,
            ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 55,
                  margin: const EdgeInsets.only(top: 10, left: 20),
                  alignment: Alignment.topLeft,
                  child: TextField(
                    autocorrect: false,
                    controller: controller,
                    keyboardType: inputType,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 8),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      prefixIcon: left,
                      hintText: hintText,
                      hintStyle: TextStyle(
                        color: TColor.placeholder,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  margin: const EdgeInsets.only(top: 10, left: 20),
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: TColor.placeholder,
                      fontSize: 11,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
