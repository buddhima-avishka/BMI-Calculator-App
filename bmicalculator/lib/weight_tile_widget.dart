import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';

class WeightTileWidget extends StatelessWidget {
  final int weight;
  final Function onIncrement;
  final Function onDecrement;

  const WeightTileWidget({
    super.key,
    required this.weight,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: kTileBoxDecoration,
      child: Column(
        children: [
          Text(
            "Weight (kg)",
            style: TextStyle(fontSize: 18, color: kActiveTextColor),
          ),
          Text(
            "$weight",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: kActiveTextColor,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                elevation: 0,
                backgroundColor: kActionButtonColor,
                shape: ShapeBorder.lerp(CircleBorder(), CircleBorder(), 0.5),
                onPressed: () => onDecrement(),
                child: Icon(Icons.remove, color: kActiveTextColor),
              ),
              SizedBox(width: 10),
              FloatingActionButton(
                elevation: 0,
                backgroundColor: kActionButtonColor,
                shape: ShapeBorder.lerp(CircleBorder(), CircleBorder(), 0.5),
                onPressed: () => onIncrement(),
                child: Icon(Icons.add, color: kActiveTextColor),
              ),
            ],
          )
        ],
      ),
    );
  }
}