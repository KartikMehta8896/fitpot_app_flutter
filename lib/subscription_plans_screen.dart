import 'package:fitpot_app_flutter/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriptionPlansScreen extends StatelessWidget {
  const SubscriptionPlansScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 45,
            ),
            _buildAppBarRow(),
            const SizedBox(
              height: 62,
            ),
            _buildSubscriptionType(),
            const SizedBox(
              height: 25,
            ),
            _buildContainerSliverGoldDiamond(),
            const SizedBox(
              height: 55,
            ),
            buildDollarPerMonth(),
            const SizedBox(
              height: 45,
            ),
            _buildPlanDescription(),
            const SizedBox(
              height: 88,
            ),
            _buildChooseButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBarRow() {
    return Padding(
      padding: EdgeInsets.only(left: 43.w),
      child: Row(
        children: const [
          Icon(Icons.arrow_back_ios_rounded),
          SizedBox(
            width: 63,
          ),
          Text(
            "Subscription Plans",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }

  Widget _buildSubscriptionType() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Subscription Type",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        Text(
          "Select Plan type",
          textAlign: TextAlign.start,
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 13, color: Colors.black54),
        )
      ],
    );
  }

  Widget _buildContainerSliverGoldDiamond() {
    return Row(
      children: [
        Container(
          height: 54.h,
          width: 92.w,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Text(
              "Sliver",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ),
        ),
        const SizedBox(
          width: 18,
        ),
        Container(
          height: 54.h,
          width: 92.w,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Text(
              "Gold",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ),
        ),
        const SizedBox(
          width: 18,
        ),
        Container(
          height: 54.h,
          width: 92.w,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Text(
              "Diamond",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ),
        )
      ],
    );
  }

  Widget buildDollarPerMonth() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "\$20",
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w900,
              color: Colors.red.shade200),
        ),
        const Text(
          "/month",
          style: TextStyle(color: Colors.black54, fontSize: 20),
        )
      ],
    );
  }

  Widget _buildPlanDescription() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        "Plan Description",
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
      ),
      const SizedBox(
        height: 8,
      ),
      Padding(
        padding: EdgeInsets.only(right: 87.w),
        child: const Text(
          "For most businesses that want to optimize web queries",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 15, color: Colors.black54),
        ),
      ),
      const SizedBox(
        height: 13,
      ),
      Padding(
        padding: EdgeInsets.only(left: 27.w),
        child: Row(
          children: const [
            Icon(Icons.done),
            SizedBox(
              width: 15,
            ),
            Text(
              "All limited links",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Padding(
        padding: EdgeInsets.only(left: 27.w),
        child: Row(
          children: const [
            Icon(Icons.done),
            SizedBox(
              width: 15,
            ),
            Text(
              "Own analytics platform",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Padding(
        padding: EdgeInsets.only(left: 27.w),
        child: Row(
          children: const [
            Icon(Icons.done),
            SizedBox(
              width: 15,
            ),
            Text(
              "Chat support",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Padding(
        padding: EdgeInsets.only(left: 27.w),
        child: Row(
          children: const [
            Icon(Icons.done),
            SizedBox(
              width: 15,
            ),
            Text(
              "Optimize hashtags",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      Padding(
        padding: EdgeInsets.only(left: 27.w),
        child: Row(
          children: const [
            Icon(Icons.done),
            SizedBox(
              width: 15,
            ),
            Text(
              "Unlimited users",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
          ],
        ),
      ),
    ]);
  }

  Widget _buildChooseButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const WalletScreen(),
            ));
      },
      child: Container(
        margin: EdgeInsets.only(left: 50.w, right: 78.w),
        height: 40.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.red[200]),
        child: const Center(
            child: Text(
          "Choose Plan",
          style: TextStyle(
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
