import 'package:flutter/cupertino.dart';

import '../constants.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    required this.onTap,
    required this.title,
  });

  final Function() onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.zero,
            topRight: Radius.zero,
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
          color: kAccentColor,
        ),
        padding: EdgeInsets.only(
          bottom: 20.0,
          top: 20.0,
        ),
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Center(
            child: Text(
          title,
          style: kLargeButtonTextStyle,
        )),
      ),
    );
  }
}
