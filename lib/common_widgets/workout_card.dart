import 'package:flutter/material.dart';

class WorkoutCardItem extends StatelessWidget {
  String title;
  String subTitle;
  String view;
  String timeperiod;
  String assetImage;

  WorkoutCardItem(
      {Key? key,
      required this.timeperiod,
      required this.view,
      required this.title,
      required this.assetImage,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 23),
      child: Container(
        height: 137,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.pink[50]),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 21),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 13,
                  ),
                  Container(
                    height: 17,
                    width: 51,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink[100]),
                    child: Center(
                      child: Text(
                        "Monthly",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.pink[300],
                            fontSize: 9,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
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
            const SizedBox(
              width: 80,
            ),
            Image(image: AssetImage(assetImage)),
          ],
        ),
      ),
    );

  }
}
