import 'package:flutter/material.dart';
import 'package:food_delivry/common/color_extension.dart';
import 'package:food_delivry/common_widget/tab_button.dart';
import 'package:food_delivry/view/home/home_view.dart';
import 'package:food_delivry/view/menu/menu_view.dart';
import 'package:food_delivry/view/more/more_view.dart';
import 'package:food_delivry/view/offet/offert_view.dart';
import 'package:food_delivry/view/profile/profile_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  // ****************
  int selectTab = 2;

  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = const HomeView();
  // ****************
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: storageBucket, child: selectPageView),
      // backgroundColor: const Color(0xfff5f5f5),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 65,
        height: 65,
        child: FloatingActionButton(
          onPressed: () {
            if (selectTab != 2) {
              selectTab = 2;
              selectPageView = const HomeView();
            }
            if (mounted) {
              setState(() {});
            }
          },
          shape: const CircleBorder(),
          backgroundColor: selectTab == 2 ? TColor.primary : TColor.placeholder,
          child: Image.asset(
            "assets/images/home_icon.png",
            width: 35,
            height: 35,
            color: TColor.white,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: TColor.white,
        shadowColor: Colors.black,
        elevation: 1,
        notchMargin: 12,
        height: 64,
        shape: const CircularNotchedRectangle(),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                onTap: () {
                  if (selectTab != 0) {
                    selectTab = 0;
                    selectPageView = const MenuView();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                title: "Menu",
                iconImage: "assets/images/menu.png",
                isSelected: selectTab == 0,
              ),
              const SizedBox(width: 40, height: 40),
              TabButton(
                onTap: () {
                  if (selectTab != 1) {
                    selectTab = 1;
                    selectPageView = const OffertView();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                title: "Offert",
                iconImage: "assets/images/offert.png",
                isSelected: selectTab == 1,
              ),
              const SizedBox(width: 40, height: 40),
              TabButton(
                onTap: () {
                  if (selectTab != 3) {
                    selectTab = 3;
                    selectPageView = const ProfileView();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                title: "Profile",
                iconImage: "assets/images/profile.png",
                isSelected: selectTab == 3,
              ),
              const SizedBox(width: 40, height: 40),
              TabButton(
                onTap: () {
                  if (selectTab != 4) {
                    selectTab = 4;
                    selectPageView = const MoreView();
                  }
                  if (mounted) {
                    setState(() {});
                  }
                },
                title: "More",
                iconImage: "assets/images/more.png",
                isSelected: selectTab == 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
