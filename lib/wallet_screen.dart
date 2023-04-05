import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 30.w, right: 30.w),
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            _buildAppBarRow(),
            const SizedBox(
              height: 29,
            ),
            _buildAddMoneyColumn(),
            const SizedBox(height: 37),
            _buildWinningsContainers(),
            const SizedBox(
              height: 25,
            ),
            _buildBonusPointContainers(),
            const SizedBox(
              height: 54
            ),
            _buildPaymentManagement(),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBarRow() {
    return Row(
        children: const[
      Icon(Icons.arrow_back_ios_rounded),
      SizedBox(width: 113,),
      Text(
        "Wallet",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
      ),
    ]);
  }

  Widget _buildAddMoneyColumn() {
    return Column(
      children: [
        Text(
          "Your Balance",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.red.shade200),
        ),
        const SizedBox(
          height: 25,
        ),
        Text(
          "\$123",
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w600,
              color: Colors.red.shade200),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          height: 35.h,
          width: 104.w,
          decoration: BoxDecoration(
              color: Colors.red.shade200,
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "Add",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.add_circle_outlined,
                color: Colors.white,
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildWinningsContainers() {
    return Container(
        height: 132.h,
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.amber.shade600),
            color: Colors.white),
        child: Column(children: [
          const SizedBox(
            height: 23,
          ),
          Row(
            children: [
              Icon(
                Icons.stars_rounded,
                color: Colors.amber.shade600,
              ),
              const SizedBox(
                width: 27,
              ),
              const Expanded(
                child: Text(
                  "Winnings",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
              ),
              const Image(
                  image: AssetImage(
                      "assets/images/wallet_screen_winning_container_icon.png")),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            height: 5.h,
            thickness: 1,
            color: Colors.grey.shade200,
          ),
          const SizedBox(
            height: 9,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Fitpot Coins",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "134",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 50,
                child: VerticalDivider(
                  thickness: 2,
                  color: Colors.grey.shade200,
                ),
              ),
              Column(
                children: const [
                  Text(
                    "Loyality Point",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "23",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  )
                ],
              ),
            ],
          )
        ]));
  }

  Widget _buildBonusPointContainers() {
    return Container(
        height: 132.h,
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.green),
            color: Colors.white),
        child: Column(children: [
          const SizedBox(
            height: 23,
          ),
          Row(
            children: [
              Icon(
                Icons.stars_rounded,
                color: Colors.green[700],
              ),
              const SizedBox(
                width: 27,
              ),
              const Expanded(
                child: Text(
                  "Bonus Point",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
              ),
              const Image(
                  image: AssetImage(
                      "assets/images/wallet_screen_winning_container_icon.png")),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            height: 5.h,
            thickness: 1,
            color: Colors.grey.shade200,
          ),
          const SizedBox(
            height: 9,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    "Fitpot Coins",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "134",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                height: 50,
                child: VerticalDivider(
                  thickness: 2,
                  color: Colors.grey.shade200,
                ),
              ),
              Column(
                children: const [
                  Text(
                    "Loyality Point",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "23",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  )
                ],
              ),
            ],
          ),
        ]));
  }

  Widget _buildPaymentManagement() {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.swap_vertical_circle_sharp,
              color: Colors.deepPurple[400],
            ),
            const SizedBox(width: 16,),
            const Expanded(
              child: Text(
                "Transaction History",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            Icon(Icons.arrow_forward_ios_sharp,size: 15,)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Divider(
          height: 5.h,
          thickness: 1,
          color: Colors.grey.shade200,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: const [
            Icon(
              Icons.download_for_offline,
              color: Colors.purple,
            ),
            SizedBox(width: 16,),
            Expanded(
              child: Text(
                "Manage Payment",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            Icon(Icons.arrow_forward_ios_sharp,size: 15,)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Divider(
          height: 5,
          thickness: 1,
          color: Colors.grey.shade200,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.wallet,
              color: Colors.yellow[800],
            ),
            const SizedBox(width: 16,),
            const Expanded(
              child: Text(
                "KYC Details",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            const Icon(Icons.arrow_forward_ios_sharp,size: 15,)
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Divider(
          height: 5,
          thickness: 1,
          color: Colors.grey.shade200,

        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: const [
            Icon(
              Icons.file_open,
              color: Colors.green,
            ),
            SizedBox(width: 16,),
            Expanded(
              child: Text(
                "Redeem Points",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            Icon(Icons.arrow_forward_ios_sharp,size: 15,)
          ],
        ),

        const SizedBox(
          height: 10,
        ),


      ],
    );
  }
}
