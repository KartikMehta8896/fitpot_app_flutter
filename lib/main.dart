import 'package:fitpot_app_flutter/body_measurement_page.dart';
import 'package:fitpot_app_flutter/calculate_your_bmi_screen.dart';
import 'package:fitpot_app_flutter/competition_screen.dart';
import 'package:fitpot_app_flutter/create_an_account_screen.dart';
import 'package:fitpot_app_flutter/full_body_workout_page_/full_body_workout_page.dart';
import 'package:fitpot_app_flutter/login_page.dart';
import 'package:fitpot_app_flutter/priyabrata_maiti_screen.dart';
import 'package:fitpot_app_flutter/profile_home_Screen.dart';
import 'package:fitpot_app_flutter/profile_screen.dart';
import 'package:fitpot_app_flutter/quiz_screen.dart';
import 'package:fitpot_app_flutter/result_screen.dart';
import 'package:fitpot_app_flutter/score_screen.dart';
import 'package:fitpot_app_flutter/subscription_plans_screen.dart';
import 'package:fitpot_app_flutter/verification_code_screen.dart';
import 'package:fitpot_app_flutter/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Review_page.dart';
import 'full_body_workout_page_/full_body_workout_page_a_discription.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(designSize: Size(375,837),
      builder: (context,widget) {
        return MaterialApp(home:LoginPage(),debugShowCheckedModeBanner: false,);
      }
    );
    return MaterialApp(home:BodyMeasurementPage(),debugShowCheckedModeBanner: false,);
    return MaterialApp(home:BodyMeasurementPage(),debugShowCheckedModeBanner: false,);
  }
}
