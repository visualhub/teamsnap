import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:teamsnap/app/color_constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedTab = 0;
  void updateSelectTabState(int index) {
    setState(() {
      selectedTab = index;
      debugPrint(selectedTab.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 80,
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _bottomNavBarTile(
            onTap: () {
              updateSelectTabState(0);
            },
            isSelected: selectedTab == 0 ? true : false,
            icon: 'assets/images/png/home.png',
            tileText: 'Home',
            color: selectedTab == 0 ? kPrimaryColor : kBackGroundColor,
          ),
          _bottomNavBarTile(
            onTap: () {
              updateSelectTabState(1);
            },
            isSelected: selectedTab == 1 ? true : false,
            icon: 'assets/images/png/calendar.png',
            tileText: 'Support',
            color: selectedTab == 1 ? kPrimaryColor : kBackGroundColor,
          ),
          _bottomNavBarTile(
            onTap: () {
              updateSelectTabState(2);
            },
            isSelected: selectedTab == 2 ? true : false,
            icon: 'assets/images/png/users.png',
            tileText: 'Settings',
            color: selectedTab == 2 ? kPrimaryColor : kBackGroundColor,
          ),
          _bottomNavBarTile(
            onTap: () {
              updateSelectTabState(3);
            },
            isSelected: selectedTab == 3 ? true : false,
            icon: 'assets/images/png/chat.png',
            tileText: 'Profile',
            color: selectedTab == 3 ? kPrimaryColor : kBackGroundColor,
          ),
          _bottomNavBarTile(
            onTap: () {
              updateSelectTabState(4);
            },
            isSelected: selectedTab == 4 ? true : false,
            icon: 'assets/images/png/lightbulb.png',
            tileText: 'Profile',
            color: selectedTab == 4 ? kPrimaryColor : kBackGroundColor,
          ),
        ],
      ),
    );
  }

  GestureDetector _bottomNavBarTile({
    bool isSelected = false,
    required String icon,
    required String tileText,
    required VoidCallback onTap,
    required Color color,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 42,
        child: Stack(
          children: [
            Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    icon,
                    color: color,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    tileText,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      color: color,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
