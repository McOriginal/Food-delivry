import 'package:flutter/material.dart';
import 'package:food_delivry/common/color_extension.dart';
import 'package:food_delivry/common_widget/round_button.dart';
import 'package:food_delivry/view/login/inscription.dart';
import 'package:food_delivry/view/login/login_view.dart';

class WelcomView extends StatefulWidget {
  const WelcomView({super.key});

  @override
  State<WelcomView> createState() => _WelcomViewState();
}

class _WelcomViewState extends State<WelcomView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  "assets/images/welcome.jpg",
                  width: media.width,
                  height: media.height * 0.6,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 40,
                  child: Image.asset(
                    "assets/images/image_icon.png",
                    width: media.width * 0.55,
                    height: media.height * 0.7,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            SizedBox(height: media.width * 0.1),
            Text(
              "Decouvrez les meilleurs nourritures de la ville",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: media.width * 0.05),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ),
                  );
                },
                title: "Login",
              ),
            ),
            SizedBox(height: media.width * 0.04),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpView(),
                    ),
                  );
                },
                title: "Créer un compte",
                type: RoundButtonType.textPrimay,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
