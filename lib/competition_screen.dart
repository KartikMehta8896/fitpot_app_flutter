import 'package:fitpot_app_flutter/common_widgets/workout_card.dart';
import 'package:flutter/material.dart';

class CompetitionPage extends StatelessWidget {
  const CompetitionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildTopAppBarContainer(),
          SizedBox(
            height: 30,
          ),
          _buildCategoryRow(),
          const SizedBox(
            height: 31,
          ),
          WorkoutCardItem(
            title: 'Fullbody Workout',
            assetImage:
                'assets/images/Competition_screen_first_container_image.png',
            subTitle: '11 Exercises | 32mins',
            view: 'View more',
            timeperiod: 'Monthly',
          ),
          const SizedBox(
            height: 13,
          ),
          WorkoutCardItem(
            title: 'Lowebody Workout',
            assetImage:
                'assets/images/upcoming_competitions_image_last_container.png',
            subTitle: '12 Exercises | 40mins',
            view: 'View more',
            timeperiod: 'Weekly',
          ),
          const SizedBox(
            height: 13,
          ),
          WorkoutCardItem(
            title: 'AB Workout',
            assetImage: 'assets/images/upcoming_competitions_image.png',
            subTitle: '14 Exercises | 20mins',
            view: 'View more',
            timeperiod: 'Monthly',
          ),
        ],
      ),
    );
  }

  Widget _buildTopAppBarContainer() {
    return Container(
      height: 129,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1), color: Colors.red.shade200),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 56),
            child: const Text(
              "Competitions ",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 44, right: 23),
            child: Row(
              children: const [
                Icon(
                  Icons.category,
                  color: Colors.white,
                  size: 13,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Category",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 92,
                ),
                Icon(
                  Icons.check_box_outlined,
                  color: Colors.white,
                  size: 13,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "My Competitions",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCategoryRow() {
    return Padding(
      padding: const EdgeInsets.only(left: 48, right: 33),
      child: Row(
        children: [
          Container(
            height: 27,
            width: 104,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red.shade200),
            child: Center(
              child: Text(
                "Category",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 27,
            width: 104,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Center(
              child: Text(
                "Category",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black54),
              ),
            ),
          ),
          Container(
            height: 27,
            width: 104,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Center(
              child: Text(
                "Category",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black54),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget _buildUpcomingCompetionsSecondWeeklyContainer() {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 35, right: 23),
  //     child: Container(
  //       height: 137,
  //       decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(10), color: Colors.pink[50]),
  //       child: Row(
  //         children: [
  //           Padding(
  //             padding: EdgeInsets.only(left: 21),
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.start,
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 SizedBox(
  //                   height: 13,
  //                 ),
  //                 Container(
  //                   height: 17,
  //                   width: 51,
  //                   decoration: BoxDecoration(
  //                       borderRadius: BorderRadius.circular(20),
  //                       color: Colors.tealAccent),
  //                   child: Center(
  //                     child: Text(
  //                       "Weekly",
  //                       textAlign: TextAlign.center,
  //                       style: TextStyle(
  //                           color: Colors.teal,
  //                           fontSize: 9,
  //                           fontWeight: FontWeight.w600),
  //                     ),
  //                   ),
  //                 ),
  //                 const SizedBox(
  //                   height: 9,
  //                 ),
  //                 const Text(
  //                   "Lowebody Workout",
  //                   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
  //                 ),
  //                 const SizedBox(
  //                   height: 5,
  //                 ),
  //                 const Text(
  //                   "12 Exercises | 40mins",
  //                   style: TextStyle(
  //                       color: Colors.black54,
  //                       fontWeight: FontWeight.w400,
  //                       fontSize: 12),
  //                 ),
  //                 const SizedBox(
  //                   height: 21,
  //                 ),
  //                 Container(
  //                     height: 22,
  //                     width: 80,
  //                     decoration: BoxDecoration(
  //                         color: Colors.white,
  //                         borderRadius: BorderRadius.circular(10)),
  //                     child: Center(
  //                       child: Text(
  //                         "View more",
  //                         textAlign: TextAlign.center,
  //                         style: TextStyle(
  //                             fontWeight: FontWeight.w500,
  //                             fontSize: 9,
  //                             color: Colors.pink[200]),
  //                       ),
  //                     )),
  //               ],
  //             ),
  //           ),
  //           const SizedBox(
  //             width: 120,
  //           ),
  //           const Image(
  //               image: AssetImage(
  //                   "assets/images/upcoming_competitions_image_last_container.png")),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // Widget _buildUpcomingCompetionsThirdWeeklyContainer() {
  //   return Padding(
  //     padding: const EdgeInsets.only(left: 35, right: 23),
  //     child: Container(
  //       height: 137,
  //       decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(10), color: Colors.pink[50]),
  //       child: Row(
  //         children: [
  //           Padding(
  //             padding: EdgeInsets.only(left: 21),
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.start,
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 SizedBox(
  //                   height: 13,
  //                 ),
  //                 Container(
  //                   height: 17,
  //                   width: 51,
  //                   decoration: BoxDecoration(
  //                       borderRadius: BorderRadius.circular(20),
  //                       color: Colors.pink[100]),
  //                   child: Center(
  //                     child: Text(
  //                       "Monthly",
  //                       textAlign: TextAlign.center,
  //                       style: TextStyle(
  //                           color: Colors.pink[300],
  //                           fontSize: 9,
  //                           fontWeight: FontWeight.w600),
  //                     ),
  //                   ),
  //                 ),
  //                 const SizedBox(
  //                   height: 9,
  //                 ),
  //                 const Text(
  //                   "AB Workout",
  //                   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
  //                 ),
  //                 const SizedBox(
  //                   height: 5,
  //                 ),
  //                 const Text(
  //                   "14 Exercises | 20mins",
  //                   style: TextStyle(
  //                       color: Colors.black54,
  //                       fontWeight: FontWeight.w400,
  //                       fontSize: 12),
  //                 ),
  //                 const SizedBox(
  //                   height: 21,
  //                 ),
  //                 Container(
  //                     height: 22,
  //                     width: 80,
  //                     decoration: BoxDecoration(
  //                         color: Colors.white,
  //                         borderRadius: BorderRadius.circular(10)),
  //                     child: Center(
  //                       child: Text(
  //                         "View more",
  //                         textAlign: TextAlign.center,
  //                         style: TextStyle(
  //                             fontWeight: FontWeight.w500,
  //                             fontSize: 9,
  //                             color: Colors.pink[200]),
  //                       ),
  //                     )),
  //               ],
  //             ),
  //           ),
  //           const SizedBox(
  //             width: 70,
  //           ),
  //           const Image(
  //               image:
  //                   AssetImage("assets/images/upcoming_competitions_image.png")),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
