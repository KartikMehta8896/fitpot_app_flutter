

import 'package:fitpot_app_flutter/verification_code_screen.dart';
import 'package:flutter/material.dart';

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
              const SizedBox(
                height: 67,
              ),
              _buildWelcomeText(),
              const SizedBox(
                height: 10,
              ),
              _buildEnterYourNumberTextLine(),
              SizedBox(height: 30,),
              _buildHintInputText(),
              const SizedBox(
                height: 15,
              ),
              _buildSendOtpTextLine(),
              const SizedBox(
                height: 67,
              ),

              _buildProcessButton(context),
              const SizedBox(
                height: 27,
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
    return Text(
      "Welcome user",
      style: TextStyle(fontSize: 31, fontWeight: FontWeight.bold),
    );
  }
  Widget _buildEnterYourNumberTextLine(){
    return Text(
      "Please Enter your mobile number to continue",
      style: TextStyle(
        color: Colors.black54,
        fontSize: 14,
      ),
    );
  }
  Widget _buildHintInputText(){
    return Padding(
      padding: const EdgeInsets.only(right: 29),
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
        padding:  EdgeInsets.only(left: 66, right: 67),
        child: Container(
          height: 40,
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
            Text(
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