import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';

class GenderTileWidget extends StatelessWidget {
  final bool isMale;
  final String text;
  final IconData icon;
  final Function onTapTile;
  const GenderTileWidget({super.key, required this.isMale, required this.text, required this.icon, required this.onTapTile});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTapTile(),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: isMale ? kSelectedTileBoxDecoration : kTileBoxDecoration,
        child: Column(
          children: [
            Icon(
              icon,
              size: 80,
              color: isMale ? kActiveTextColor : kInactiveTextColor,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 20, 
                color: isMale ? kActiveTextColor : kInactiveTextColor),
            )
          ],
        ),
      ),
    );
  }
}