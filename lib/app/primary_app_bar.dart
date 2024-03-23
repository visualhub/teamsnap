import 'package:flutter/cupertino.dart';
import 'package:teamsnap/app/color_constants.dart';

class PrimaryAppBar extends StatelessWidget {
  const PrimaryAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.paddingOf(context).top,
      ),
      padding: const EdgeInsets.only(
        right: 10,
        left: 10,
      ),
      height: 70,
      child: Row(
        children: [
          CupertinoButton(
            minSize: 0,
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: Image.asset(
              'assets/images/png/menu.png',
              color: kPrimaryColor,
            ),
          ),
          const Spacer(),
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
            child: Image.asset(
              'assets/images/png/account.png',
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
