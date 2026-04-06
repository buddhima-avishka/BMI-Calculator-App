import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';

class BMICalculatorPage extends StatefulWidget {
  const BMICalculatorPage({super.key});

  @override
  State<BMICalculatorPage> createState() => _BMICalculatorPageState();
}

class _BMICalculatorPageState extends State<BMICalculatorPage> {
  bool isMale = true;
  double height = 183;
  int weight = 63;
  int age = 24;

  String bmiCategory(double bmi) {
  if (bmi < 18.5) return "Underweight";
  if (bmi < 25) return "Normal";
  if (bmi < 30) return "Overweight";
  return "Obese";
}

  Color bmiCategoryColor(double bmi) {
  if (bmi < 18.5) return Colors.lightBlue;
  if (bmi < 25) return Colors.green;
  if (bmi < 30) return Colors.orange;
  return Colors.red;
}

  double calculateBMI({required double height, required int weight}){
    return weight / ((height / 100) * (height / 100));
  }

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
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: isMale ? kSelectedTileBoxDecoration : kTileBoxDecoration,
                          child: Column(
                            children: [
                              Icon( Icons.male, size: 80, color: isMale ? kActiveTextColor : kInactiveTextColor, ),
                              Text("Male", style: TextStyle(fontSize: 20, color: isMale ? kActiveTextColor : kInactiveTextColor),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 10,
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: !isMale ? kSelectedTileBoxDecoration : kTileBoxDecoration,
                          child: Column(
                            children: [
                              Icon( Icons.female, size: 80, color: !isMale ? kActiveTextColor : kInactiveTextColor, ),
                              Text("Female", style: TextStyle(fontSize: 20, color: !isMale ? kActiveTextColor : kInactiveTextColor),),
                            ],
                          ),
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
                          Text(height.toStringAsFixed(1), style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: kActiveTextColor),),
                          Text("cm", style: TextStyle(fontSize: 20, color: kActiveTextColor),)
                        ],
                      ),
                      Slider(
                        min: 80, 
                        max: 200, 
                        value: height, 
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
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
                            Text("$weight", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: kActiveTextColor),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: kActionButtonColor,
                                  shape: ShapeBorder.lerp(CircleBorder(), CircleBorder(), 0.5), onPressed: () {
                                    setState(() {
                                      if(weight > 20){
                                        weight--;
                                      }
                                    });
                                  }, 
                                  child: Icon(Icons.remove, color: kActiveTextColor,)
                                ),
                                SizedBox(width: 10,),
                                FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: kActionButtonColor,
                                  shape: ShapeBorder.lerp(CircleBorder(), CircleBorder(), 0.5), onPressed: () {
                                    setState(() {
                                      if(weight < 200){
                                        weight++;
                                      }            
                                    });
                                  }, 
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
                            Text("$age", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: kActiveTextColor),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: kActionButtonColor,
                                  shape: ShapeBorder.lerp(CircleBorder(), CircleBorder(), 0.5),onPressed: () {
                                    setState(() {
                                      if(age > 1){
                                        age--;
                                      }
                                    });
                                  }, 
                                  child: Icon(Icons.remove, color: kActiveTextColor,)
                                ),
                                SizedBox(width: 10,),
                                FloatingActionButton(
                                  elevation: 0,
                                  backgroundColor: kActionButtonColor,
                                  shape: ShapeBorder.lerp(CircleBorder(), CircleBorder(), 0.5), onPressed: () {
                                    setState(() {
                                      if(age < 120){
                                        age++;
                                      }
                                    });
                                  }, 
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
              onPressed: () {
                final bmi = calculateBMI(
                  height: height, 
                  weight: weight
                );
                final category = bmiCategory(bmi);
                final categoryColor = bmiCategoryColor(bmi);
                showDialog(context: context, 
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: categoryColor,
                    title: const Text('Your BMI'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          bmi.toStringAsFixed(1),
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: kActiveTextColor,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          category,
                          style: TextStyle(
                            fontSize: 24,
                            color: kActiveTextColor
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('OK'),
                      ),
                    ],
                  );
                });
              }, 
              child: const Text('Calculate')
            )
          ],
        ),
      ),
    );
  }
}