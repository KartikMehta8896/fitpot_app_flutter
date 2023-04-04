import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({Key? key}) : super(key: key);

  @override
  State<VerificationCodeScreen> createState() => _StateVerificationCodeScreen();
}

class _StateVerificationCodeScreen extends State<VerificationCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 26, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 68,
            ),
            Icon(Icons.arrow_back_ios_rounded),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Verification Code",
              style: TextStyle(
                fontSize: 31,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Please type the verification code sent to 878767656",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black38),
            ),
            const SizedBox(
              height: 30,
            ),
            Pinput(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              length: 4,
              showCursor: true,
              defaultPinTheme: PinTheme(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.red.shade200)),
                  textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.red[200])),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Text(
                    "I don’t receive a code!",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(" Please resend",
                      style: TextStyle(
                          color: Colors.red.shade200,
                          fontSize: 16,
                          fontWeight: FontWeight.w500))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
