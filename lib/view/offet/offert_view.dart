import 'package:flutter/material.dart';
import 'package:food_delivry/common/color_extension.dart';
import 'package:food_delivry/common_widget/popular_restaurant_row%20.dart';
import 'package:food_delivry/common_widget/round_button.dart';
import 'package:food_delivry/view/more/my_order_view.dart';

class OffertView extends StatefulWidget {
  const OffertView({super.key});

  @override
  State<OffertView> createState() => _OffertViewState();
}

class _OffertViewState extends State<OffertView> {
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
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Derniers Offre",
                      style: TextStyle(
                        fontSize: 20,
                        color: TColor.primaryText,
                        fontWeight: FontWeight.w800,
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
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 2),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Trouvez nos plus spécial offres",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: SizedBox(
                        width: 120,
                        height: 30,
                        child: RoundButton(
                          onPressed: () {},
                          title: "Obtenir l'offre",
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // const SizedBox(height: 20),

              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: offertArr.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  var pObj = offertArr[index] as Map? ?? {};
                  return PopularRestaurantRow(
                    pObj: pObj,
                    onTap: () {},
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // *************

  // #########################
  List offertArr = [
    {
      "image": "assets/images/pizza.jpg",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/images/pizza.jpg",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/images/pizza.jpg",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/images/pizza.jpg",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/images/pizza.jpg",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
  ];
  // #########################

  // #########################
  // *************
}
