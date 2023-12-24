import 'package:flutter/material.dart';
import 'package:food_delivry/common/color_extension.dart';
import 'package:food_delivry/view/more/my_order_view.dart';

class InboxView extends StatefulWidget {
  const InboxView({
    super.key,
  });

  @override
  State<InboxView> createState() => InboxViewState();
}

class InboxViewState extends State<InboxView> {
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
                        "Inbox",
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

              // const SizedBox(height: 20),

              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Divider(
                      color: TColor.secondaryText.withOpacity(0.4),
                    ),
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    itemCount: inboxArr.length,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => Divider(
                      color: TColor.secondaryText.withOpacity(0.4),
                      height: 1,
                      indent: 25,
                      endIndent: 25,
                    ),
                    itemBuilder: (context, index) {
                      var iObj = inboxArr[index] as Map? ?? {};
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        decoration: BoxDecoration(
                            color: index % 4 != 1
                                ? TColor.white
                                : TColor.textfield),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                color: TColor.primary,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    iObj["title"].toString(),
                                    style: TextStyle(
                                      color: TColor.primaryText,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    iObj["detail"].toString(),
                                    maxLines: 2,
                                    style: TextStyle(
                                      color: TColor.secondaryText,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ********************
  List inboxArr = [
    {
      "title": "Mk restaurant promotions",
      "detail":
          "Le Meilleurs restaurant de la ville Le Meilleurs restaurant de la ville Le Meilleurs restaurant de la ville Le Meilleurs restaurant de la ville ",
    },
    {
      "title": "Mk restaurant promotions",
      "detail":
          "Le Meilleurs restaurant de la ville Le Meilleurs restaurant de la ville Le Meilleurs restaurant de la ville Le Meilleurs restaurant de la ville ",
    },
    {
      "title": "Mk restaurant promotions",
      "detail":
          "Le Meilleurs restaurant de la ville Le Meilleurs restaurant de la ville Le Meilleurs restaurant de la ville Le Meilleurs restaurant de la ville ",
    },
    {
      "title": "Mk restaurant promotions",
      "detail":
          "Le Meilleurs restaurant de la ville Le Meilleurs restaurant de la ville Le Meilleurs restaurant de la ville Le Meilleurs restaurant de la ville ",
    },
    {
      "title": "Mk restaurant promotions",
      "detail":
          "Le Meilleurs restaurant de la ville Le Meilleurs restaurant de la ville Le Meilleurs restaurant de la ville Le Meilleurs restaurant de la ville ",
    },
  ];
  // ********************
}
