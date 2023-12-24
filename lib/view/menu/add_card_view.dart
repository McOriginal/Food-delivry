import 'package:flutter/material.dart';
import 'package:food_delivry/common/color_extension.dart';
import 'package:food_delivry/common_widget/round_icon_button.dart';
import 'package:food_delivry/common_widget/round_textfield.dart';

class AddCardView extends StatefulWidget {
  const AddCardView({super.key});

  @override
  State<AddCardView> createState() => _AddCardViewState();
}

class _AddCardViewState extends State<AddCardView> {
// ********************
  TextEditingController txtCardNumber = TextEditingController();
  TextEditingController txtCardMounth = TextEditingController();
  TextEditingController txtCardYear = TextEditingController();
  TextEditingController txtCardCode = TextEditingController();
  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtLastName = TextEditingController();
  bool isAnytime = false;
// ********************

  @override
  Widget build(BuildContext context) {
    // *********
    var media = MediaQuery.of(context).size;
    // *********
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      width: media.width,
      // height: media.height,
      decoration: BoxDecoration(
        color: TColor.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Ajouter Une Carte De Débit",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close,
                  color: TColor.primaryText,
                  size: 25,
                ),
              ),
            ],
          ),
          Divider(color: TColor.secondaryText.withOpacity(0.4), height: 1),
          RoundTextfield(
            hintText: "Numéro de Carte",
            controller: txtCardNumber,
            inputType: TextInputType.number,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(
                "Expire",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 80,
                child: RoundTextfield(
                  hintText: "MM",
                  controller: txtCardMounth,
                  inputType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 15),
              SizedBox(
                width: 80,
                child: RoundTextfield(
                  hintText: "YYYY",
                  controller: txtCardYear,
                  inputType: TextInputType.number,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          RoundTextfield(
            hintText: "Numéro de sécurité",
            controller: txtCardCode,
            inputType: TextInputType.number,
          ),
          const SizedBox(height: 15),
          RoundTextfield(
            hintText: "Prénom",
            controller: txtFirstName,
          ),
          const SizedBox(height: 15),
          RoundTextfield(
            hintText: "Nom",
            controller: txtLastName,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(
                "Vous pouvez supprimer cette carte à tout moment",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Switch(
                  value: isAnytime,
                  activeColor: TColor.primary,
                  onChanged: (newVal) {
                    setState(() {
                      isAnytime = newVal;
                    });
                  }),
            ],
          ),
          RoundIconButton(
            onPressed: () {},
            title: "Ajouter la carte",
            icon: Icons.add,
            color: TColor.primary,
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
