//ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task_11_bmi/utils/coustom_text.dart';
import 'package:task_11_bmi/pages/result_page.dart';
import 'package:task_11_bmi/utils/colors.dart';

import '../utils/coustom_widgits.dart';

class BMIcalculator extends StatefulWidget {
  const BMIcalculator({super.key});

  @override
  State<BMIcalculator> createState() => _BMIcalculatorState();
}

class _BMIcalculatorState extends State<BMIcalculator> {
  var weightController = TextEditingController();
  var footController = TextEditingController();
  var inchController = TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var mw = MediaQuery.of(context).size.width;
    var mh = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Appcolor.backgroundBlue,
      appBar: AppBar(
        backgroundColor: Appcolor.lightBlue,
        centerTitle: true,
        title: TitleText(text: " BMI Calculator "),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: mw * 0.47,
                  child: CustomTextField(
                    controller: footController,
                    keyboard: TextInputType.number,
                    icon: Icon(
                      Icons.height_rounded,
                      color: Appcolor.darkBlue,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    hintText: "height in feets",
                    borderColor: Appcolor.lightBlue,
                    focusedBorderColor: Appcolor.darkBlue,
                    fillColor: Appcolor.lightBlue,
                  ),
                ),
                SizedBox(
                  width: mw * 0.47,
                  child: CustomTextField(
                    controller: inchController,
                    keyboard: TextInputType.number,
                    icon: Icon(
                      Icons.height_rounded,
                      color: Appcolor.darkBlue,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    hintText: "height in inches",
                    borderColor: Appcolor.lightBlue,
                    focusedBorderColor: Appcolor.darkBlue,
                    fillColor: Appcolor.lightBlue,
                  ),
                ),
              ],
            ),
            //
            SizedBox(height: 8),
            //
            CustomTextField(
              controller: weightController,
              keyboard: TextInputType.number,
              icon: Icon(
                Icons.sports_gymnastics_rounded,
                color: Appcolor.darkBlue,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              hintText: "Enter body weight in kg",
              borderColor: Appcolor.lightBlue,
              focusedBorderColor: Appcolor.darkBlue,
              fillColor: Appcolor.lightBlue,
            ),
            //
            SizedBox(height: 8),
            //
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HealthResult(
                              result: result,
                            )));

                var weight = weightController.text.toString();
                var foot = footController.text.toString();
                var inch = inchController.text.toString();

                if (foot != "" && inch != "" && weight != "") {
                  var dWeight = double.parse(weight);
                  var dFoot = double.parse(foot);
                  var dInch = double.parse(inch);

                  var totalInch = (dFoot * 12) + dInch;
                  var heightCentiMeter = (totalInch * 2.54);
                  var heightMeter = heightCentiMeter / 100;

                  var bmi = dWeight / (heightMeter * heightMeter);

                  setState(() {
                    result = "BMI: ${bmi.toStringAsFixed(3)}";
                  });
                } else {
                  setState(() {
                    result = "Plese fill all the required blanks!!";
                  });
                }
              },
              style: TextButton.styleFrom(
                backgroundColor: Appcolor.primery,
                foregroundColor: Appcolor.quaternary,
                minimumSize: Size(double.maxFinite, 58),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: BodyText(
                text: "Show Result",
                color: Colors.white,
              ),
            ),
            //
            SizedBox(height: 80),
            //
            // TitleText(
            //   text: result,
            //   color: Colors.black,
            // ),
          ],
        ),
      ),
    );
  }
}
