import 'package:flutter/material.dart';
import 'package:food_delivry/common/color_extension.dart';
import 'package:food_delivry/common_widget/round_button.dart';
import 'package:food_delivry/common_widget/round_icon_button.dart';
import 'package:food_delivry/common_widget/round_textfield.dart';
import 'package:food_delivry/view/login/inscription.dart';
import 'package:food_delivry/view/login/reset_password_view.dart';
import 'package:food_delivry/view/on_boarding/on_boarding_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  // **************
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
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
                "Login",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              // Text(
              //   "Remplissez ces champs",
              //   style: TextStyle(
              //     color: TColor.secondaryText,
              //     fontSize: 14,
              //     fontWeight: FontWeight.w500,
              //   ),
              // ),
              // const SizedBox(height: 25),
              RoundTextfield(
                hintText: "Votre adresse email",
                controller: txtEmail,
                inputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 25),
              RoundTextfield(
                hintText: "Votre Mot de passe",
                controller: txtPassword,
                obscureText: true,
              ),
              const SizedBox(height: 25),
              RoundButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OnBoardingView(),
                      ),
                    );
                  },
                  title: "Se Connecter"),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResetPasswordView(),
                    ),
                  );
                },
                child: Text(
                  "Mot de passe oublié ?",
                  style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "OU",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              RoundIconButton(
                onPressed: () {},
                title: "Continuer avec Google",
                icon: Icons.golf_course,
                color: const Color(0xffD04B39),
              ),
              const SizedBox(height: 20),
              RoundIconButton(
                onPressed: () {},
                title: "Continuer avec Facebook",
                icon: Icons.face,
                color: const Color(0xff367FC0),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Vous n'avais pas un compte ?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: TColor.secondaryText,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpView(),
                          ),
                        );
                      },
                      child: Text(
                        "Créer un compte",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: TColor.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: TColor.secondaryText,
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
