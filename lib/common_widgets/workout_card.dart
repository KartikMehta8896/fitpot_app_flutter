import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


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
      padding:  EdgeInsets.only(left: 35.w, right: 23.w),
      child: Container(
        height: 137.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.pink[50]),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 21.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 13.h,
                  ),
                  Container(
                    height: 17.h,
                    width: 51.w,
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
                   SizedBox(
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
                      height: 22.h,
                      width: 80.w,
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
