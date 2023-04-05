import 'package:fitpot_app_flutter/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalculateYourBMIScreen extends StatelessWidget {
  const CalculateYourBMIScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 58,
              ),
              _buildAppBarRow(),
              SizedBox(
                height: 40,
              ),
              _buildCalculateYourBMIText(),
              SizedBox(
                height: 60,
              ),
              _buildGenderAndAgeTextLine(),
              _buildHintGenderAndAgeTextRow(),
              SizedBox(
                height: 46,
              ),
              _buildHeightAndWeightTextRow(),
              _buildHintHeightAndWeightTextRow(),
              SizedBox(
                height: 52,
              ),
              _buildImage(),
              SizedBox(
                height: 37,
              ),
              _buildCalculateBmiButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBarRow() {
    return Row(
      children: const [
        Icon(Icons.arrow_back_ios_rounded),
        SizedBox(
          width: 20,
        ),
        SizedBox(
          width: 45,
        ),
        Text(
          "Hi ! Amar",
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
        )
      ],
    );
  }

  Widget _buildCalculateYourBMIText() {
    return const Text(
      "Calculate your BMI",
      textAlign: TextAlign.start,
      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 31),
    );
  }

  Widget _buildGenderAndAgeTextLine() {
    return Row(
      children: const [
        Expanded(
          child: Text(
            "Gender",
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Colors.black54),
          ),
        ),
        SizedBox(
          width: 40,
        ),
        Expanded(
          child: Text(
            "Age",
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Colors.black54),
          ),
        )
      ],
    );
  }

  Widget _buildHintGenderAndAgeTextRow() {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: 90.w,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Male/female',
                  hintStyle: TextStyle(color: Colors.grey.shade500)),
            ),
          ),
        ),
        SizedBox(
          width: 40,
        ),
        Expanded(
          child: Container(
            width: 90.w,
            child: Padding(
              padding: const EdgeInsets.only(right: 45),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: '00',
                    hintStyle: TextStyle(color: Colors.grey.shade500)),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHeightAndWeightTextRow() {
    return Row(
      children: const [
        Expanded(
          child: Text(
            "Height",
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Colors.black54),
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Expanded(
          child: Text(
            "Weight",
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                color: Colors.black54),
          ),
        )
      ],
    );
  }

  Widget _buildHintHeightAndWeightTextRow() {
    return Row(
      children: [
        Expanded(
          child: Container(
            width: 90.w,
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: '170 cm',
                  hintStyle: TextStyle(color: Colors.grey.shade500)),
            ),
          ),
        ),
        SizedBox(
          width: 50,
        ),
        Expanded(
          child: Container(
            width: 90.w,
            child: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: '80 kg',
                    hintStyle: TextStyle(color: Colors.grey.shade500)),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildImage() {
    return Center(
      child:  Image(
        image: AssetImage("assets/images/bmi_screen_image.png"),
        height: 203.h,
        width: 221.w,
      ),
    );
  }

  Widget _buildCalculateBmiButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  ResultScreen(),));
      },
      child: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w),
        child: Container(
          height: 45.h,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.red[200]),
          child: const Center(
              child: Text(
            "CALCULATE BMI",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
          )),
        ),
      ),
    );
  }
}
