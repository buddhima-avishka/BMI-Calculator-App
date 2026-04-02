import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';

class BMICalculatorPage extends StatefulWidget {
  const BMICalculatorPage({super.key});

  @override
  State<BMICalculatorPage> createState() => _BMICalculatorPageState();
}

class _BMICalculatorPageState extends State<BMICalculatorPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        foregroundColor: kActiveTextColor,
        title: const Text('BMI Calculator'),
      ),
      backgroundColor: kBackgroundColor,
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 10,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: kTileBoxDecoration,
                        child: Column(
                          children: [
                            Icon( Icons.male, size: 80, color: kActiveTextColor, ),
                            Text("Male", style: TextStyle(fontSize: 20, color: kActiveTextColor),)
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 10,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: kTileBoxDecoration,
                        child: Column(
                          children: [
                            Icon( Icons.female, size: 80, color: kInactiveTextColor,),
                            Text("Female", style: TextStyle(fontSize: 20, color: kInactiveTextColor),),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: kTileBoxDecoration,
                  child: Column(
                    children: [
                      Text("Height", style: TextStyle(fontSize: 20, color: kActiveTextColor),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("183", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: kActiveTextColor),),
                          Text("cm", style: TextStyle(fontSize: 20, color: kActiveTextColor),)
                        ],
                      ),
                      Slider(
                        min: 80, 
                        max: 200, 
                        value: 183, 
                        onChanged: (value) {},
                        thumbColor: kButtonColor,
                        activeColor: kActiveTextColor,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 10,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: kTileBoxDecoration,
                        child: Column(
                          children: [
                            Text("Weight (kg)", style: TextStyle(fontSize: 18, color: kActiveTextColor),),
                            Text("83", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: kActiveTextColor),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: kActionButtonColor,
                                  shape: ShapeBorder.lerp(CircleBorder(), CircleBorder(), 0.5), onPressed: () {}, 
                                  child: Icon(Icons.remove, color: kActiveTextColor,)
                                ),
                                SizedBox(width: 10,),
                                FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: kActionButtonColor,
                                  shape: ShapeBorder.lerp(CircleBorder(), CircleBorder(), 0.5), onPressed: () {}, 
                                  child: Icon(Icons.add, color: kActiveTextColor,)
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 10,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: kTileBoxDecoration,
                        child: Column(
                          children: [
                            Text("Age (yrs)", style: TextStyle(fontSize: 18, color: kActiveTextColor),),
                            Text("24", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: kActiveTextColor),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: kActionButtonColor,
                                  shape: ShapeBorder.lerp(CircleBorder(), CircleBorder(), 0.5),onPressed: () {}, 
                                  child: Icon(Icons.remove, color: kActiveTextColor,)
                                ),
                                SizedBox(width: 10,),
                                FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: kActionButtonColor,
                                  shape: ShapeBorder.lerp(CircleBorder(), CircleBorder(), 0.5), onPressed: () {}, 
                                  child: Icon(Icons.add, color: kActiveTextColor,)
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 30,),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: kButtonColor,
                foregroundColor: kActiveTextColor,
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {}, 
              child: const Text('Calculate')
            )
          ],
        ),
      ),
    );
  }
}