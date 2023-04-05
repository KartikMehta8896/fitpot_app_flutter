import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool state = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 44,
            ),
            _buildTopRow(),
            const SizedBox(
              height: 40,
            ),
            _buildImageNameEditRow(),
            const SizedBox(
              height: 30,
            ),
            _buildHeightWeightAgeColumn(),
            const SizedBox(
              height: 40,
            ),
            _buildAccountContainer(),
            const SizedBox(
              height: 18,
            ),
            _buildNotificationContainer(),
            const SizedBox(
              height: 18,
            ),
            _buildOtherContainer(),
            const SizedBox(
              height: 93,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTopRow() {
    return Row(
      children:  [
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.only(left: 30.w),
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 15,
          ),
        ),
        const SizedBox(
          width: 130,
        ),
        const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        )
      ],
    );
  }

  Widget _buildImageNameEditRow() {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, right: 30.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.account_circle,
            size: 50,
          ),
          const Text(
            "StefaniWong",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),
          Container(
            height: 30.h,
            width: 88.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red.shade200),
            child: const Center(
                child: Text(
              "Edit",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Colors.white),
            )),
          )
        ],
      ),
    );
  }

  Widget _buildHeightWeightAgeColumn() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 54.w, right: 61.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "180cm",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.red.shade200),
              ),
              Text(
                "65kg",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.red.shade200),
              ),
              Text(
                "22yo",
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
          padding: EdgeInsets.only(left: 54.w, right: 61.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Height",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
              Text(
                "Weight",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
              Text(
                "Age",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildAccountContainer() {
    return Container(
      margin: EdgeInsets.only(left: 40.w, right: 30.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1), color: Colors.white),
      child: Padding(
        padding:EdgeInsets.all(8.sm),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: const Text(
                "Account",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.all(8.sm),
                  child: Icon(
                    Icons.account_circle,
                    color: Colors.red.shade200,
                  ),
                ),
                const Expanded(
                  child: Text(
                    "Personal Data",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                ),
                const Icon(Icons.keyboard_arrow_right)
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.all(8.sm),
                  child: Icon(
                    Icons.document_scanner_outlined,
                    color: Colors.red.shade200,
                  ),
                ),
                const Expanded(
                  child: Text(
                    "Achievement",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                ),
                const Icon(Icons.keyboard_arrow_right)
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.all(8.sm),
                  child: Icon(
                    Icons.graphic_eq,
                    color: Colors.red.shade200,
                  ),
                ),
                const Expanded(
                  child: Text(
                    "Activity History",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                ),
                const Icon(Icons.keyboard_arrow_right)
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.all(8.sm),
                  child: Icon(
                    Icons.add_chart,
                    color: Colors.red.shade200,
                  ),
                ),
                const Expanded(
                  child: Text(
                    "Workout Progress",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                ),
                const Icon(Icons.keyboard_arrow_right)
              ],
            ),
            const SizedBox(
              height: 21,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationContainer() {
    return Container(
      margin: EdgeInsets.only(left: 40.w, right: 30.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1), color: Colors.white),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding:EdgeInsets.only(left: 20.w),
          child: const Text(
            "Notification",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.sm),
              child: Icon(
                Icons.notifications,
                color: Colors.red.shade200,
              ),
            ),
            const Expanded(
              child: Text(
                "Pop-up Notification",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54),
              ),
            ),
            Transform.scale(scaleX:1,scaleY:.70 ,
              child: CupertinoSwitch(
                value: state,
                onChanged: (value) {
                  state = value;
                  setState(
                    () {},
                  );
                },
                thumbColor: Colors.white,
                activeColor: Colors.red.shade200
              ),
            ),
          ],
        )
      ]),
    );
  }

  Widget _buildOtherContainer() {
    return Container(
        margin: EdgeInsets.only(left: 40.w, right: 30.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1), color: Colors.white),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(left: 25.w, top: 20.w),
            child: const Text(
              "Other",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.w),
            child: Row(
              children: [
                Icon(
                  Icons.message,
                  color: Colors.red.shade200,
                ),
                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.all(8.sm),
                    child: const Text(
                      "Contact Us",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                  ),
                ),
                const Icon(Icons.keyboard_arrow_right)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.only(left: 21.w),
            child: Row(
              children: [
                Icon(
                  Icons.shield_outlined,
                  color: Colors.red.shade200,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.sm),
                    child: const Text(
                      "Privacy Policy",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                  ),
                ),
                const Icon(Icons.keyboard_arrow_right)
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.only(left: 21.w),
            child: Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.red.shade200,
                ),
                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.all(8.sm),
                    child: const Text(
                      "Setting",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                  ),
                ),
                const Icon(Icons.keyboard_arrow_right),
              ],

            ),
          ),
          const SizedBox(height: 20,)
        ]));
  }
}
