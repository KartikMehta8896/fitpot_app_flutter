import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PriyabrataMaitiScreen extends StatefulWidget {
  PriyabrataMaitiScreen({Key? key}) : super(key: key);

  @override
  State<PriyabrataMaitiScreen> createState() => _PriyabrataMaitiScreenState();
}

class _PriyabrataMaitiScreenState extends State<PriyabrataMaitiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 63,
            ),
            _buildToMenuRow(),
            const SizedBox(
              height: 27,
            ),
            _buildFitnessImage(),
            _buildHeightWeightBodyMassIndex(),
            const SizedBox(
              height: 15,
            ),
            _buildRectangularColorRow(),
            const SizedBox(
              height: 31,
            ),
            _buildCompetitionProcessRow(),
            const SizedBox(
              height: 20,
            ),
            // _buildChartWeekDays(),
            // SizedBox(
            //   height: 26,
            // ),
            _BuildTodayTarget(),
            const SizedBox(
              height: 40,
            ),
            _buildUpcomingCompetionsViewAllRow(),
            const SizedBox(
              height: 17,
            ),
            _buildUpcomingCompetionsFirstWeeklyContainer(),
            SizedBox(height: 16,),
            _buildUpcomingCompetionsSecondWeeklyContainer(),
            SizedBox(height: 16,),
            _buildUpcomingCompetionsThireddWeeklyContainer(),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }

  Widget _buildToMenuRow() {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 53),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 19),
            child: Icon(Icons.menu),
          ),
          const Expanded(
            child: Text(
              "PriyabrataMaiti",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 23),
            child: Icon(
              Icons.wallet,
              color: Colors.red.shade200,
            ),
          ),
          Icon(Icons.notifications)
        ],
      ),
    );
  }

  Widget _buildFitnessImage() {
    return const Image(
      image: AssetImage("assets/images/priyabrata_maiti_image.png"),
    );
  }

  Widget _buildHeightWeightBodyMassIndex() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 54, right: 61),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Height",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.red.shade200),
              ),
              Text(
                "Weight",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.red.shade200),
              ),
              Text(
                "Body Mass index",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.red.shade200),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 54, right: 61),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "170 cm",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "87 kg",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "28.7",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildRectangularColorRow() {
    return Padding(
      padding: const EdgeInsets.only(right: 36, left: 36),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 16,
              decoration: const BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: const Center(
                child: Text(
                  "<  18.5",
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              height: 16,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(1)),
              child: const Text("18.5 -24.99",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.white)),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              height: 16,
              decoration: BoxDecoration(
                  color: Colors.yellow, borderRadius: BorderRadius.circular(1)),
              child: const Text("25 -29.99",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.white)),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              height: 16,
              decoration: const BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: const Text(">30",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCompetitionProcessRow() {
    return Padding(
      padding: const EdgeInsets.only(left: 39, right: 42),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              "Competition Progress",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            ),
          ),
          Container(
            height: 25,
            width: 76,
            decoration: BoxDecoration(
                color: Colors.red.shade200,
                borderRadius: BorderRadius.circular(20)),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Weekly  ",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.white,
                    size: 15,
                  )
                ]),
          ),
        ],
      ),
    );
  }

  Widget _BuildTodayTarget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 43),
          child: Text(
            "Today’s Target",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(
          height: 14,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 43, right: 46),
          child: Row(
            children: [
              Container(
                height: 70,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.red.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    const Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.directions_run,
                        color: Colors.white,
                      ),
                    )),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Covered",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            Text(
                              "0 Kms",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 27,
              ),
              Container(
                height: 70,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.red.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    const Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.directions_run,
                        color: Colors.white,
                      ),
                    )),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 18),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Remainimg",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            Text(
                              "0 Kms",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildUpcomingCompetionsViewAllRow() {
    return Padding(
      padding: const EdgeInsets.only(left: 43, right: 38),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              "Upcoming Competions",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            ),
          ),
          Text(
            "View All",
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Colors.red.shade200),
          )
        ],
      ),
    );
  }

  Widget _buildUpcomingCompetionsFirstWeeklyContainer() {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 23),
      child: Container(
        height: 137,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.pink[50]),
        child: Row(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 21),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 SizedBox(height: 13,),
                  Container(
                    height: 17,
                    width: 51,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(20),color: Colors.pink[100]),
                    child: Center(
                      child: Text(
                        "Monthly",textAlign: TextAlign.center,
                        style:
                            TextStyle(color:Colors.pink[300],fontSize: 9, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  const Text(
                    "AB Workout",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "14 Exercises | 20mins",
                    style: TextStyle(color:Colors.black54,fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Container(
                      height: 22,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "View more",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 9,
                              color: Colors.pink[200]),
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(width: 70,),
            const Image(
                image:
                    AssetImage("assets/images/upcoming_competitions_image.png")),
          ],
        ),
      ),
    );
  }

  Widget _buildUpcomingCompetionsSecondWeeklyContainer() {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 23),
      child: Container(
        height: 137,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.pink[50]),
        child: Row(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 21),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 13,),
                  Container(
                    height: 17,
                    width: 51,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(20),color: Colors.pink[100]),
                    child: Center(
                      child: Text(
                        "Monthly",textAlign: TextAlign.center,
                        style:
                        TextStyle(color:Colors.pink[300],fontSize: 9, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  const Text(
                    "AB Workout",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "14 Exercises | 20mins",
                    style: TextStyle(color:Colors.black54,fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Container(
                      height: 22,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "View more",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 9,
                              color: Colors.pink[200]),
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(width: 70,),
            const Image(
                image:
                AssetImage("assets/images/upcoming_competitions_image.png")),
          ],
        ),
      ),
    );
  }

  Widget _buildUpcomingCompetionsThireddWeeklyContainer() {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 23),
      child: Container(
        height: 137,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.pink[50]),
        child: Row(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 21),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 13,),
                  Container(
                    height: 17,
                    width: 51,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(20),color: Colors.pink[100]),
                    child: Center(
                      child: Text(
                        "Monthly",textAlign: TextAlign.center,
                        style:
                        TextStyle(color:Colors.pink[300],fontSize: 9, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  const Text(
                    "Lowebody Workout",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "12 Exercises | 40mins",
                    style: TextStyle(color:Colors.black54,fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 21,
                  ),
                  Container(
                      height: 22,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          "View more",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 9,
                              color: Colors.pink[200]),
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(width: 120,),
            const Image(
                image:
                AssetImage("assets/images/upcoming_competitions_image_last_container.png")),
          ],
        ),
      ),
    );
  }


}
