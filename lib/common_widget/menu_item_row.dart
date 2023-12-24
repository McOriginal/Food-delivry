import 'package:flutter/material.dart';
import 'package:food_delivry/common/color_extension.dart';

class MenuItemRow extends StatelessWidget {
  const MenuItemRow({super.key, required this.mObj, required this.onTap});

  final Map mObj;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              mObj["image"].toString(),
              width: double.maxFinite,
              height: 200,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.maxFinite,
              height: 200,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mObj["name"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: TColor.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star_outlined,
                            size: 18,
                            color: TColor.primary,
                          ),
                          Text(
                            mObj["rate"],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: TColor.primary,
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: 8),
                          // Text(
                          //   "(${mObj["type"]} Ratings)",
                          //   textAlign: TextAlign.center,
                          //   style: TextStyle(
                          //     color: TColor.white,
                          //     fontSize: 11,
                          //   ),
                          // ),
                          const SizedBox(width: 8),
                          Text(
                            mObj["type"],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: TColor.primary,
                              fontSize: 11,
                            ),
                          ),
                          Text(
                            " . ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: TColor.primary,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            mObj["food_type"],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: TColor.white,
                              fontSize: 12,
                            ),
                          ),
                          Icon(
                            Icons.star_outlined,
                            size: 18,
                            color: TColor.primary,
                          ),
                          // Text(
                          //   mObj["rate"],
                          //   textAlign: TextAlign.center,
                          //   style: TextStyle(
                          //     color: TColor.primary,
                          //     fontSize: 11,
                          //     fontWeight: FontWeight.w700,
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 13),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
