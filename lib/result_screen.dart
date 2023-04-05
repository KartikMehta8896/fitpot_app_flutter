import 'package:fitpot_app_flutter/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 58,),
            _buildAppBarText(),
            const SizedBox(
              height: 71,
            ),
            _buildResultText(),
            const SizedBox(
              height: 56,
            ),
            _buildSpeedoMeter(),
            _buildYouHaveNormalBodyWeight(),
            const SizedBox(
              height: 10,
            ),
            _buildGoodJobTextRow(),
            const SizedBox(
              height: 150,
            ),
            _buildBottomButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBarText() {
    return Row(
      children:const [
        Icon(Icons.arrow_back_ios_rounded),
        SizedBox(
          width: 23,
        ),
        Text(
          "Hi ! Amar",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 21),
        ),
      ],
    );
  }

  Widget _buildResultText() {
    return const Center(
      child: Text(
        "Result",
        style: TextStyle(fontSize: 31, fontWeight: FontWeight.w700),
      ),
    );
  }

  Widget _buildSpeedoMeter() {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
          maximum: 150,
          minimum: 10,
          interval: 10,
          ranges: <GaugeRange>[
            GaugeRange(
              startValue: 0,
              endValue: 50,
              color: Colors.blue,
            ),
            GaugeRange(
              startValue: 50,
              endValue: 100,
              color: Colors.green,
            ),
            GaugeRange(
              startValue: 100,
              endValue: 150,
              color: Colors.red.shade500,
            )
          ],
          pointers: const [
            NeedlePointer(
              value: 110,
              enableAnimation: true,
            )
          ],
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
              widget: Text(
                "110",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.red.shade500),
              ),
              positionFactor: 0.5,
              angle: 90,
            )
          ],
        )
      ],
    );
  }

  Widget _buildYouHaveNormalBodyWeight() {
    return const Center(
      child: Text(
        "You have normal body weight",
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
      ),
    );
  }

  Widget _buildGoodJobTextRow() {
    return Center(
      child: Text(
        "Good Job !",
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.red.shade200),
      ),
    );
  }

  Widget _buildBottomButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  const QuizScreen(),));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30,bottom: 47),
        child: Container(
          height: 45.h,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.red[200]),
          child: const Center(
              child: Text(
            "Get Started",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
          )),
        ),
      ),
    );
  }
}
