import 'package:flutter/material.dart';
import 'package:food_delivry/view/login/welcom_view.dart';

class StartupView extends StatefulWidget {
  const StartupView({super.key});

  @override
  State<StartupView> createState() => _StartupViewState();
}

class _StartupViewState extends State<StartupView> {
//  ***********************

  @override
  void initState() {
    goWelcomePage();
    super.initState();
  }

  void goWelcomePage() async {
    await Future.delayed(const Duration(seconds: 7));
    navigate();
  }

  void navigate() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const WelcomView(),
      ),
    );
  }
//  ***********************

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/images/delivry.jpg",
              width: media.width,
              height: media.height,
              fit: BoxFit.cover,
            ),
            // Image.asset(
            //   "assets/images/delivry.png",
            //   width: media.width * 0.7,
            //   height: media.height * 0.7,
            //   fit: BoxFit.contain,
            // ),
            const Positioned(
              bottom: 140,
              child: Text(
                "M.K Restaurant",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
