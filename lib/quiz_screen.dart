import "package:fitpot_app_flutter/profile_screen.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

class QuizScreen extends StatelessWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildAvatarTextCircle(),
          SizedBox(height: 60,),
          _buildCardioRowText(),
          SizedBox(height: 10),
          _buildYogaRowText(),
          SizedBox(height: 10),
          _buildStrengthExercisesRowText(),
          SizedBox(height: 10),
          _buildBalanceExercisesRowText(),
          SizedBox(height: 74),
          _buildNextButton(context),
        ],
      ),
    );
  }

  Widget _buildAvatarTextCircle() {
    return Container(
      height: 250,
      width: double.infinity,
      child: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          child: SvgPicture.asset(
            "assets/images/background_quiz_image.svg",
            fit: BoxFit.fill,
            height: 250,
            width: double.infinity,
          ),
        ),
        Positioned(
            left: 20,
            top: 20,
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,size: 15,
            )),
        const Positioned(
            left: 40,
            right: 0,
            top: 100,
            bottom: 0,
            child: Text("1. Which one of these exercises is effective for weight loss?",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            )),
        const Positioned(
            left: 170,
            right: 0,
            top: 20,
            bottom: 0,
            child: Text(
              "FITPOT QUIZ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ))
      ]),
    );
  }

  Widget _buildCardioRowText() {
    return Container(
      margin: EdgeInsets.only(left: 22, right: 21),
      width: double.infinity,
      height: 52,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red.shade200),
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
        child: Text(
          "Cardio",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,color: Colors.black54),
        ),
      ),
    );
  }

  Widget _buildYogaRowText() {
    return Container(
      margin: EdgeInsets.only(left: 22, right: 21),
      width: double.infinity,
      height: 52,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red.shade200),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
        child: Text(
          "Yoga",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,color: Colors.black54),
        ),
      ),
    );
  }

  Widget _buildStrengthExercisesRowText() {
    return Container(
      margin: EdgeInsets.only(left: 22, right: 21),
      width: double.infinity,
      height: 52,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red.shade200),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
        child: Text(
          "StrengthExercises",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,color: Colors.black54),
        ),
      ),
    );
  }

  Widget _buildBalanceExercisesRowText() {
    return Container(
      margin: EdgeInsets.only(left: 22, right: 21),
      width: double.infinity,
      height: 52,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.red.shade200),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
        child: Text(
          "StrengthExercises",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18,color: Colors.black54),
        ),
      ),
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileScreen (),));
      },
      child: Container(margin: EdgeInsets.only(left: 20,right: 20),
        height: 45,
        // width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.red[200]),
        child: const Center(
            child: Text(
          "Next >",
          style: TextStyle(
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
