import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teamsnap/app/app_image_text_box.dart';
import 'package:teamsnap/app/bottom_nav_bar.dart';
import 'package:teamsnap/app/color_constants.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        backgroundColor: kBackGroundColor,
        leading: CupertinoButton(
          minSize: 0,
          padding: EdgeInsets.zero,
          onPressed: () {},
          child: Image.asset(
            'assets/images/png/menu.png',
            color: kPrimaryColor,
          ),
        ),
        actions: [
          CupertinoButton(
            minSize: 0,
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: Image.asset(
              'assets/images/png/add.png',
              color: kPrimaryColor,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          CupertinoButton(
            minSize: 0,
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: kWhiteColor,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/jpg/download.jpg',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: const Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.only(
                right: 10,
                left: 10,
                top: 10,
                bottom: 90,
              ),
              child: Column(
                children: [
                  // PrimaryAppBar(),
                  AppImageTextBox(),
                  SizedBox(
                    height: 20,
                  ),
                  AppImageTextBox(),
                  SizedBox(
                    height: 20,
                  ),
                  AppImageTextBox(),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BottomNavBar(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
