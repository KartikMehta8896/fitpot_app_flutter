import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildAppBarContainer(),
          SizedBox(
            height: 25,
          ),
          _buildNameAndRankRow(),
          SizedBox(
            height: 11,
          ),
          _buildStraightLine(),
          SizedBox(
            height: 23,
          ),
          _buildNameAndRankColumn(),
        ],
      ),
    );
  }

  Widget _buildAppBarContainer() {
    return Container(
      height: 240,
      decoration: BoxDecoration(
          color: Colors.red.shade200, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          SizedBox(
            height: 34,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 80,
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your Score",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.red.shade200),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "140pt",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.red.shade200),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 42, right: 36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Your Rank :  #6",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                Text(
                  "Total Earning : 32 FP",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNameAndRankRow() {
    return Padding(
      padding: const EdgeInsets.only(left: 83, right: 65),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:const [
          Text(
            "Name",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "Rank",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }

  Widget _buildStraightLine() {
    return const Padding(
      padding: EdgeInsets.only(left: 11, right: 18),
      child: Divider(
        height: 5,
        thickness: 1,
        color: Colors.black54,
      ),
    );
  }

  Widget _buildNameAndRankColumn() {
    return Padding(
      padding: const EdgeInsets.only(left: 35,right: 65),
      child: Column(
        children: [
          Row(children: const[
          Icon(Icons.account_circle),
          SizedBox(width: 9,),
          Expanded(
            child: Text(
              "Myra Foster",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14,color: Colors.black54),
            ),
          ),
          Text(
            "#1",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14,color: Colors.black54),
          )]),
          SizedBox(height: 19,),
          Row(children: const[
            Icon(Icons.account_circle),
            SizedBox(width: 9,),
            Expanded(
              child: Text(
                "Sweden",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14,color: Colors.black54),
              ),
            ),
            Text(
              "#2",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14,color: Colors.black54),
            )]),
          SizedBox(height: 19,),
          Row(children: const[
            Icon(Icons.account_circle),
            SizedBox(width: 9,),
            Expanded(
              child: Text(
                "French Southern ",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14,color: Colors.black54),
              ),
            ),
            Text(
              "#3",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14,color: Colors.black54),
            )]),
          SizedBox(height: 19,),
          Row(children: const[
            Icon(Icons.account_circle),
            SizedBox(width: 9,),
            Expanded(
              child: Text(
                "Martha Barnes",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14,color: Colors.black54),
              ),
            ),
            Text(
              "#4",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14,color: Colors.black54),
            )]),
          SizedBox(height: 19,),
          Row(children: const[
            Icon(Icons.account_circle),
            SizedBox(width: 9,),
            Expanded(
              child: Text(
                "Monaco",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14,color: Colors.black54),
              ),
            ),
            Text(
              "#5",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14,color: Colors.black54),
            )]),
          SizedBox(height: 19,),
          Row(children: const[
            Icon(Icons.account_circle),
            SizedBox(width: 9,),
            Expanded(
              child: Text(
                "Minnie Hoffman",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14,color: Colors.black54),
              ),
            ),
            Text(
              "#6",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14,color: Colors.black54),
            )]),
          SizedBox(height: 19,),
          Row(children: const[
            Icon(Icons.account_circle),
            SizedBox(width: 9,),
            Expanded(
              child: Text(
                "Monaco",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14,color: Colors.black54),
              ),
            ),
            Text(
              "#7",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14,color: Colors.black54),
            )]),

        ],
      ),
    );
  }
}
