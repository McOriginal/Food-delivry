import 'package:flutter/material.dart';
import 'package:food_delivry/common/color_extension.dart';
import 'package:food_delivry/common_widget/round_button.dart';
import 'package:food_delivry/common_widget/round_icon_button.dart';
import 'package:food_delivry/view/menu/add_card_view.dart';
import 'package:food_delivry/view/more/my_order_view.dart';

class PayementDetailView extends StatefulWidget {
  const PayementDetailView({
    super.key,
  });

  @override
  State<PayementDetailView> createState() => _PayementDetailViewState();
}

class _PayementDetailViewState extends State<PayementDetailView> {
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
                        "Payement Details",
                        style: TextStyle(
                          fontSize: 20,
                          color: TColor.primaryText,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () { Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyOrderView()));},
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Choisissez votre methode de payement",
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Divider(
                  color: TColor.secondaryText.withOpacity(0.4),
                ),
              ),
              const SizedBox(height: 10),

              Container(
                decoration: BoxDecoration(
                  color: TColor.textfield,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cash/Carte de Livraison",
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Icon(
                            Icons.check,
                            size: 30,
                            color: TColor.primary,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Divider(
                        color: TColor.secondaryText.withOpacity(0.4),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: carArr.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        var cObj = carArr[index] as Map? ?? {};
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 8),
                          child: Row(
                            children: [
                              Image.asset(
                                cObj["icon"].toString(),
                                width: 50,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: Text(
                                  cObj["card"].toString(),
                                  style: TextStyle(
                                    color: TColor.secondaryText,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 130,
                                height: 35,
                                child: RoundButton(
                                  onPressed: () {},
                                  title: "Supprimer la carte",
                                  fontSize: 13,
                                  type: RoundButtonType.textPrimay,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Divider(
                        color: TColor.secondaryText.withOpacity(0.4),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Autres Methodes",
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: RoundIconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) => const AddCardView(),
                    );
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const AddCardView(),
                    //   ),
                    // );
                  },
                  title: "Ajouter une nouvelle carte",
                  icon: Icons.add,
                  color: TColor.primary,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ********************
  List carArr = [
    {"icon": "assets/images/payemen.png", "card": "*** *** *** 123"}
  ];
  // ********************
}
