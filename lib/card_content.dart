import 'package:flutter/material.dart';

import 'constants.dart';

class CardChild extends StatelessWidget {
  CardChild(
      {required this.selectedIcon, required this.label, required this.onPress});
  final IconData selectedIcon;
  final String label;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            selectedIcon,
            size: 80.0,
            color: Colors.white,
          ),
          SizedBox(height: 15.0),
          Text(label, style: kLabelTextStyle),
        ],
      ),
    );
  }
}
