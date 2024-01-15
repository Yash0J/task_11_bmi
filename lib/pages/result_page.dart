//ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task_11_bmi/utils/coustom_text.dart';
import 'package:task_11_bmi/utils/colors.dart';

class HealthResult extends StatefulWidget {
  const HealthResult({super.key, required this.result});
  final String result;

  @override
  State<HealthResult> createState() => _HealthResultState();
}

class _HealthResultState extends State<HealthResult> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var mw = MediaQuery.of(context).size.width;
    var mh = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Appcolor.backgroundBlue,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //
            Container(
              height: mh * 0.36,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.green[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: TitleText(
                    text: widget.result, size: 60, weight: FontWeight.w700),
              ),
            ),
            //
            SizedBox(height: mh * 0.05),
            //
            Center(
              child: TitleText(
                text: "You are healthy!",
                size: 26,
                weight: FontWeight.w600,
              ),
            ),

            //
          ],
        ),
      ),
    );
  }
}
