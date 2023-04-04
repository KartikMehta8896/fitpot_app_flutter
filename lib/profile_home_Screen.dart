import 'package:flutter/material.dart';

class ProfileHomeScreen extends StatelessWidget {
  const ProfileHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildTopAppBarRow(),
            SizedBox(height: 60,),
            _buildHomePageIcons(),
            SizedBox(height: 26,),
            _buildStraightLine(),
            SizedBox(height: 18,),
            _buildLogOutButton(),
            SizedBox(height: 250,)
          ],
        ),
      ),
    );
  }

  Widget _buildTopAppBarRow() {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.red.shade200),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 69,
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Alex Pergolizzi",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,top: 3),
                child: Text("+91 8767656546",textAlign: TextAlign.start,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.white),),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHomePageIcons() {
    return Padding(
      padding: const EdgeInsets.only(left: 18,bottom: 33,),
      child: Column(
        children: [
          Row(children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.home,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          ]),SizedBox(height: 30,),
          Row(children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.person,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "My Profile",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          ]),SizedBox(height: 30,),
          Row(children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.compare_arrows,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "My Competitions",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          ]),SizedBox(height: 30,),
          Row(children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.heart_broken,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "BMI Calculator",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          ]),SizedBox(height: 30,),
          Row(children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications_none,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Notification",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          ]),SizedBox(height: 30,),
          Row(children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.fitness_center,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "About Fitpot",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          ]),SizedBox(height: 30,),
          Row(children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.star_border,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Rate us",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          ]),SizedBox(height: 30,),

          Row(children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_downward_outlined,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
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

  Widget _buildStraightLine(){
    return Padding(
      padding: const EdgeInsets.only(left: 11,right: 18),
      child: Divider(height: 5,thickness: 1,color: Colors.black38,),
    );
  }
  Widget _buildLogOutButton(){
    return  Row(children: [
      Padding(
        padding: EdgeInsets.only(left: 23),
        child: Icon(
          Icons.login_outlined,
        ),
      ),
      Expanded(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "LOGOUT",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color:Colors.red.shade200),
          ),
        ),
      ),
    ]);
  }
}
