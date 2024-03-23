import 'package:flutter/material.dart';
import 'package:teamsnap/app/app_image_text_box.dart';
import 'package:teamsnap/app/bottom_nav_bar.dart';
import 'package:teamsnap/app/color_constants.dart';
import 'package:teamsnap/app/primary_app_bar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: const Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: 90,
              ),
              child: Column(
                children: [
                  PrimaryAppBar(),
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
            )
          ],
        ),
      ),
    );
  }
}
