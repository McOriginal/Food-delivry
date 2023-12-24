import 'package:flutter/material.dart';
import 'package:food_delivry/common/color_extension.dart';
import 'package:food_delivry/common_widget/round_button.dart';
import 'package:food_delivry/common_widget/round_textfield.dart';
import 'package:food_delivry/view/login/new_password_view.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  // **************
  TextEditingController txtEmail = TextEditingController();
  // **************
  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 64),
              Text(
                "Mot de passe oublié",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                "Veillez entrez votre adresse email pour resevoir le message",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              RoundTextfield(
                hintText: "Votre adresse email",
                controller: txtEmail,
                inputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 25),
              RoundButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NewPasswordView(),
                      ),
                    );
                  },
                  title: "Envoyer"),
            ],
          ),
        ),
      ),
    );
  }
}
