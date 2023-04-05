

import 'package:fitpot_app_flutter/verification_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 86,),
              Icon(Icons.arrow_back_ios_rounded),
              _buildLoginImage(),
               SizedBox(
                height: 67.h,
              ),
              _buildWelcomeText(),
              const SizedBox(
                height: 10,
              ),
              _buildEnterYourNumberTextLine(),
              SizedBox(height: 30.h,),
              _buildHintInputText(),
               SizedBox(
                height: 15.h,
              ),
              _buildSendOtpTextLine(),
               SizedBox(
                height: 67.h,
              ),

              _buildProcessButton(context),
               SizedBox(
                height: 27.h,
              ),
              _buildDoNotHaveAnAccountTextLine(),









        ]),
      ),
    );
  }
  Widget _buildLoginImage(){
    return const Center(
      child: Image(
        image: AssetImage("assets/images/welcome_screen_image.png"),
      ),
    );
  }
  Widget _buildWelcomeText(){
    return const Text(
      "Welcome user",
      style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
    );
  }
  Widget _buildEnterYourNumberTextLine(){
    return const Text(
      "Please Enter your mobile number to continue",
      style: TextStyle(
        color: Colors.black54,
        fontSize: 14,
      ),
    );
  }
  Widget _buildHintInputText(){
    return Padding(
      padding:  EdgeInsets.only(right: 29.w),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)),
                hintText: 'Enter your phone number',
                hintStyle: TextStyle(color: Colors.grey.shade500)),
          ),
        ],
      ),
    );
  }
  Widget _buildSendOtpTextLine(){
    return Center(
        child: Text(
          "we will send OTP to your given mobile Number",
          style: TextStyle(color: Colors.grey.shade500),
        ));

  }
  Widget _buildProcessButton(BuildContext context) {
    return  InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const VerificationCodeScreen(),));
      },
      child: Padding(
        padding:  EdgeInsets.only(left: 66.w, right: 67.w),
        child: Container(
          height: 40.h,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red[200]),
          child: const Center(
              child: Text(
                "Proceed",
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
        ),
      ),
    );
  }
  Widget _buildDoNotHaveAnAccountTextLine(){
    return  Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don’t have an account?",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.black38),
            ),
            Text("Singup",style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.red.shade200),),
          ],
        ));

  }
}
