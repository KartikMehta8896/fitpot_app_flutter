import 'package:fitpot_app_flutter/full_body_workout_page_/full_body_workout_page_a_discription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FullBodyWorkoutPage extends StatelessWidget {
  const FullBodyWorkoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildFullBodyWorkoutContainer(),
            const SizedBox(
              height: 90,
            ),
            _buildStartAndEndDateContainer(),
            const SizedBox(
              height:20,
            ),
            _buildADescriptionsContainer(),
            const SizedBox(
              height: 10,
            ),
            _buildBDescriptionsContainer(),
            const SizedBox(height: 310),
            _buildJoinCompetitionButton(context),
            SizedBox(height: 74)
          ],
        ),
      ),
    );
  }

  Widget _buildFullBodyWorkoutContainer() {
    return Stack(
        alignment: AlignmentDirectional.topCenter,
        clipBehavior: Clip.none,
        children: [
          Image(
              image:
                  AssetImage("assets/images/fullbody_workout_page_image.jpg")),
          Positioned(
            top: 180.h,
            left: 26.w,
            right: 26.w,
            child: Container(
              // margin: EdgeInsets.only(left: 20, right: 20),
              height: 140.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red.shade200),
              child: Padding(
                padding:  EdgeInsets.only(left: 28.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Fullbody Workout",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Pot Value",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
          )
        ]);
  }

  Widget _buildStartAndEndDateContainer() {
    return Container(
      margin: EdgeInsets.only(left: 26.w, right: 27.w),
      height: 92.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Padding(
        padding: EdgeInsets.only(left: 27.w, right: 26.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: const [
                Icon(Icons.date_range),
                Text(
                  "Start Date :",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                ),
                Text(
                  "22/02/2021",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Icon(Icons.date_range),
                Text(
                  "End Date :",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                ),
                Text(
                  "29/02/2021",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildADescriptionsContainer() {
    return Container(
      height: 62.h,
      width: double.infinity,
      margin: EdgeInsets.only(left: 26.w, right: 27.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Padding(
        padding: EdgeInsets.only(left: 29.w, right: 42.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "a. Descriptions",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_sharp,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBDescriptionsContainer() {
    return Container(
      height: 62.h,
      width: double.infinity,
      margin: EdgeInsets.only(left: 26.w, right: 27.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Padding(
        padding: EdgeInsets.only(left: 29.w, right: 42.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Expanded(
              child: Text(
                "b. Rules",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_sharp,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildJoinCompetitionButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FullBodyWorkoutPageADescription(),
            ));
      },
      child: Padding(
        padding: EdgeInsets.only(left: 66.w, right: 67.w),
        child: Container(
          height: 40.w,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.red[200]),
          child: const Center(
              child: Text(
            "Join Competition",
            style: TextStyle(
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }
}
