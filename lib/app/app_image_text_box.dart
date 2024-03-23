import 'package:flutter/material.dart';
import 'package:teamsnap/app/color_constants.dart';

class AppImageTextBox extends StatelessWidget {
  const AppImageTextBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(
          12,
        ),
        boxShadow: [
          BoxShadow(
            color: kPrimaryContrastColor.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 160,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/jpg/Banner.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            padding: const EdgeInsets.only(
              right: 14,
              left: 14,
              bottom: 12,
              top: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Succeed of and on the court',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter',
                    color: kBackGroundColor.withOpacity(0.9),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
