import 'package:flutter/material.dart';
import 'package:food_delivry/common/color_extension.dart';
import 'package:food_delivry/view/more/my_order_view.dart';

class AboutUsView extends StatefulWidget {
  const AboutUsView({
    super.key,
  });

  @override
  State<AboutUsView> createState() => AboutUsViewState();
}

class AboutUsViewState extends State<AboutUsView> {
  // **********************
  TextEditingController txtSearch = TextEditingController();
  // **********************
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xfff5f5f5),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "A propos de nous",
                        style: TextStyle(
                          fontSize: 20,
                          color: TColor.primaryText,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyOrderView()));
                      },
                      icon: const Icon(
                        Icons.shopping_cart,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 2),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Divider(
                      color: TColor.secondaryText.withOpacity(0.4),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemCount: aboutTextArr.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var text = aboutTextArr[index] as String? ?? "";
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 6,
                              height: 6,
                              margin: const EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                color: TColor.primary,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Text(
                                text,
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // ********************
  List aboutTextArr = [
    "Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville ",
    "Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville ",
    "Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville ",
    "Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville Le meilleurs restaurant de la ville ",
  ];
  // ********************
}
