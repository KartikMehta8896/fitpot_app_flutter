import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileHomeScreen extends StatelessWidget {
  const ProfileHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildTopAppBarRow(),
            SizedBox(
              height: 60,
            ),
            _buildHomePageIcons(),
            SizedBox(
              height: 26,
            ),
            _buildStraightLine(),
            SizedBox(
              height: 18,
            ),
            _buildLogOutButton(),
            SizedBox(
              height: 250,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTopAppBarRow() {
    return Container(
      height: 150.h,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.red.shade200),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(8.sm),
            child: const Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 69,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.sm),
                child: const Text(
                  "Alex Pergolizzi",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.w, top: 3.w),
                child: const Text(
                  "+91 8767656546",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHomePageIcons() {
    return Padding(
      padding: EdgeInsets.only(
        left: 18.w,
        bottom: 33.h,
      ),
      child: Column(
        children: [
          Row(children: [
            Padding(
              padding: EdgeInsets.all(8.sm),
              child: const Icon(
                Icons.home,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.sm),
                child: const Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          ]),
          const SizedBox(
            height: 30,
          ),
          Row(children:  [
            Padding(
              padding: EdgeInsets.all(8.sm),
              child: const Icon(
                Icons.person,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.sm),
                child: const Text(
                  "My Profile",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          ]),
          const SizedBox(
            height: 30,
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.all(8.sm),
              child: const Icon(
                Icons.compare_arrows,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.sm),
                child: const Text(
                  "My Competitions",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          ]),
          const SizedBox(
            height: 30,
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.all(8.sm),
              child: const Icon(
                Icons.heart_broken,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.sm),
                child: const Text(
                  "BMI Calculator",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          ]),
          const SizedBox(
            height: 30,
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.all(8.sm),
              child: const Icon(
                Icons.notifications_none,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.sm),
                child: const Text(
                  "Notification",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          ]),
          const SizedBox(
            height: 30,
          ),
          Row(children: [
            Padding(
              padding: EdgeInsets.all(8.sm),
              child: const Icon(
                Icons.fitness_center,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.sm),
                child: const Text(
                  "About Fitpot",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          ]),
          const SizedBox(
            height: 30,
          ),
          Row(children:[
            Padding(
              padding: EdgeInsets.all(8.sm),
              child: const Icon(
                Icons.star_border,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.sm),
                child: const Text(
                  "Rate us",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          ]),
          const SizedBox(
            height: 30,
          ),
          Row(children:  [
            Padding(
              padding: EdgeInsets.all(8.sm),
              child: const Icon(
                Icons.arrow_downward_outlined,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.sm),
                child: const Text(
                  "App Store",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }

  Widget _buildStraightLine() {
    return Padding(
      padding:EdgeInsets.only(left: 11.w, right: 18.w),
      child: const Divider(
        height: 5,
        thickness: 1,
        color: Colors.black38,
      ),
    );
  }

  Widget _buildLogOutButton() {
    return Row(children: [
      Padding(
        padding: EdgeInsets.only(left: 23.w),
        child: const Icon(
          Icons.login_outlined,
        ),
      ),
      Expanded(
        child: Padding(
          padding: EdgeInsets.all(8.sm),
          child: Text(
            "LOGOUT",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.red.shade200),
          ),
        ),
      ),
    ]);
  }
}
