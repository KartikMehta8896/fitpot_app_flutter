import 'dart:math';

import 'package:fitpot_app_flutter/calculate_your_bmi_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyMeasurementPage extends StatefulWidget {
  const BodyMeasurementPage({Key? key}) : super(key: key);

  @override
  State<BodyMeasurementPage> createState() => _BodyMeasurementPageState();
}

class _BodyMeasurementPageState extends State<BodyMeasurementPage> {
  var weightType = 0;
  var weightValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 86,
              ),
              const Icon(Icons.arrow_back_ios_rounded),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "What are your body measurements?",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 31),
              ),
              const SizedBox(
                height: 192,
              ),
              _buildYourWeightText(),
              SizedBox(height: 20,),
              _buildYourHeightText(),
              const SizedBox(
                height: 19,
              ),
              _buildSlider(),
              const SizedBox(
                height: 150,
              ),_buildNextButton(),

            ],
          ),
        ),
      ),
    );
  }
 Widget _buildYourWeightText(){
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)),
          hintText: 'Your Weight',
          hintStyle: TextStyle(color: Colors.grey.shade500)),
    );

 }
 Widget _buildYourHeightText(){
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15)),
        hintText: 'Your Height',
        hintStyle: TextStyle(color: Colors.grey.shade500),
      ),
    );
 }
 Widget _buildSlider(){
    return Row(
      children: [
        Slider(
            min: 0,
            max: 100,
            activeColor: Colors.red.shade200,
            onChanged: (value) {
              setState(() {
                weightValue = value;
              });
            },
            value: weightValue),
        SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {
            if (weightType == 0) {
              weightType = 1;
            } else {
              weightType = 0;
            }
          },
          child: Container(
            height: 22.h,
            width: 35.98.w,
            decoration: BoxDecoration(
                border: Border.symmetric(),
                borderRadius: BorderRadius.circular(20),
                color: weightType == 1
                    ? Colors.red.shade200
                    : Colors.white),
            child: const Center(
                child: Text(
                  "CM",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {
            if (weightType == 0) {
              weightType = 1;
            } else {
              weightType = 0;
            }
          },
          child: Container(
            height: 22.h,
            width: 35.98.w,
            decoration: BoxDecoration(
                border: const Border.symmetric(),
                borderRadius: BorderRadius.circular(20),
                color: weightType == 1 ? Colors.white : Colors.white),
            child: const Center(
              child: Text(
                "INCH",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          ),
        )
      ],
    );
 }
 Widget _buildNextButton(){
   return  InkWell(
     onTap: () {
       Navigator.push(
         context,
         MaterialPageRoute(
           builder: (context) =>  CalculateYourBMIScreen(),));
     },
     child: Padding(
       padding: EdgeInsets.only(left: 30.w, right: 30.w),
       child: Container(
         height: 45.h,
         width: double.infinity,
         decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             color: Colors.red[200]),
         child: const Center(
             child: Text(
               "Next >",
               style: TextStyle(
                   color: Colors.white,
                   fontSize: 16,
                   fontWeight: FontWeight.w700),
             )),
       ),
     ),
   );
 }
}
