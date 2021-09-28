import 'package:flutter/material.dart';

const iconColor = Color(0xFF8D8E98);
const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: iconColor,
);

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
          Text(label, style: labelTextStyle),
        ],
      ),
    );
  }
}
