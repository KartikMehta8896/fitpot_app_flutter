import 'package:flutter/material.dart';

class FullBodyWorkoutPageADescription extends StatelessWidget {
  const FullBodyWorkoutPageADescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
              _buildFullBodyWorkoutContainer(),
            const SizedBox(
              height: 90
            ),
            _buildStartAndEndDateContainer(),
            const SizedBox(
              height: 9,
            ),
            _buildADescriptionsContainer(),
            const SizedBox(
              height: 23,
            ),
            _buildBDescriptionsContainer(),
            const SizedBox(height: 19),
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
            top: 180,
            left: 26,
            right: 26,
            child: Container(
              // margin: EdgeInsets.only(left: 20, right: 20),
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red.shade200),
              child: Padding(
                padding: const EdgeInsets.only(left: 28),
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
      margin: EdgeInsets.only(left: 26, right: 27),
      height: 92,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 27, right: 26),
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
      height: 211,
      width: double.infinity,
      margin: EdgeInsets.only(left: 26, right: 27),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.only(left: 29, right: 42),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 28,
            ),
            Text(
              "a. Descriptions",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            SizedBox(height: 15),
            Text(
              "i. Daily Target/Day",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.black38),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              " ii. Total Target",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.black38),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              " iii. Minimum Target/Day",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.black38),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              " iv. Royalty Points:Daily & Competition – Paid User | Subscribed User",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.black38),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              " v. RestDay",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.black38),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              " vi. Total Participant",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Colors.black38),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBDescriptionsContainer() {
    return Container(
      height: 320,
      width: double.infinity,
      margin: EdgeInsets.only(left: 26, right: 27),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(left: 29, right: 42),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 10,),
          Text(
            "b. Rules",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            "1. Competition Joining Rules",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 5,),
          Text(
            "a.	One user can join multiple competition but not in same date range means User’s Joined compaction’s last date must be > than current competition Join date",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Colors.black38),
          ),
          SizedBox(height: 10,),
          Text(
            "2. Cancelation Rules",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 5,),
          Text(
            "a.	User can withdraw himself from any competition if start date is > than global cancelation rules days",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Colors.black38),
          ),
            SizedBox(
              height: 5,
            ),

          Text("b.	Refund policy on cancelation: Based on global policy",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Colors.black38),
          ), SizedBox(
              height: 5,
            ),

          Text(
            "c.	Cancelation Policy & Refund Policy will be same for all users i.e. Free | Paid | Subscribed users.",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Colors.black38),
          ), SizedBox(
              height: 5,
            ),

          Text(
            "d.	if any competition cancelled by Management or Policy valuation then cancelation rules will be changed",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Colors.black38),
          ), SizedBox(
              height: 5,
            ),


        ],
      ),
    ),);
  }
}
