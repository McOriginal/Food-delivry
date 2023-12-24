import 'package:flutter/material.dart';
import 'package:food_delivry/common/color_extension.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({
    super.key,
  });

  @override
  State<NotificationsView> createState() => NotificationsViewState();
}

class NotificationsViewState extends State<NotificationsView> {
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
                        "Notifications",
                        style: TextStyle(
                          fontSize: 20,
                          color: TColor.primaryText,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
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
                    itemCount: notificationArr.length,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => Divider(
                      color: TColor.secondaryText.withOpacity(0.4),
                      height: 1,
                      indent: 25,
                      endIndent: 25,
                    ),
                    itemBuilder: (context, index) {
                      var nObj = notificationArr[index] as Map? ?? {};
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        decoration: BoxDecoration(
                            color: index % 2 == 0
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
                                    nObj["title"].toString(),
                                    style: TextStyle(
                                      color: TColor.primaryText,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    nObj["time"].toString(),
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
  List notificationArr = [
    {
      "title": "Votre commande à été envoyer",
      "time": "Maintenant",
    },
    {
      "title": "Votre commande à été envoyer",
      "time": "1 h ego",
    },
    {
      "title": "Votre commande à été envoyer",
      "time": "3 h ego",
    },
    {
      "title": "Votre commande à été envoyer",
      "time": "5 h ego",
    },
    {
      "title": "Votre commande à été envoyer",
      "time": "5 juin 2023",
    },
    {
      "title": "Votre commande à été envoyer",
      "time": "6 juin 2023",
    },
    {
      "title": "Votre commande à été envoyer",
      "time": "7 juin 2023",
    },
  ];
  // ********************
}
