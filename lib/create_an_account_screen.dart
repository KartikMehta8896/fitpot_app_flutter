import 'package:fitpot_app_flutter/body_measurement_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAnAccountScreen extends StatefulWidget {
  const CreateAnAccountScreen({Key? key}) : super(key: key);


  @override
  State<CreateAnAccountScreen> createState() => _CreateAnAccountScreenState();

}

class _CreateAnAccountScreenState extends State<CreateAnAccountScreen> {
  bool isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 36, vertical: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.arrow_back_ios_rounded,
                size: 13.5,
              ),
              const SizedBox(
                height: 64,
              ),
              _buildCreateAnAccountText(),
              const SizedBox(
                height: 40,
              ),
              _buildFullAndHalfName(),
              const SizedBox(
                height: 24,
              ),
              _buildSelectGender(),
              _buildCheckedBoxText(),
              SizedBox(height: 29,),
              _buildSignUpButton(context),
              SizedBox(height: 47,),
              _buildLoginTextLine(),



            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCreateAnAccountText() {
    return Column(
      children: const [
        Text(
          "Create an",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 31),
        ),
        Text(
          "Account",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 31),
        ),
      ],
    );
  }

  Widget _buildFullAndHalfName() {
    return Column(children: [TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: 'First Name',
          hintStyle: TextStyle(
              color: Colors.grey.shade500,
              fontSize: 12,
              fontWeight: FontWeight.w400)),
    ),
      const SizedBox(
        height: 13,
      ),
      TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)),
            hintText: 'Last Name',
            hintStyle: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 12,
                fontWeight: FontWeight.w400)),
      ),
    ],);
  }

  Widget _buildSelectGender() {
    return Column(children: [const Text(
      "Gender",
      style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.black38),
    ),
      const SizedBox(
        height: 24,
      ),
      Center(
        child: Row(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 75.h,
                width: 52.56.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: const Image(
                  image: AssetImage("assets/images/male_image.png"),
                ),
              ),
              const SizedBox(
                width: 36,
              ),
              Container(
                height: 75.h,
                width: 50.56.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: const Image(
                  image: AssetImage(
                      "assets/images/transgender_image.png"),
                ),
              ),
              const SizedBox(
                width: 36,
              ),
              Container(
                height: 75.h,
                width: 50.56.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: const Image(
                  image: AssetImage("assets/images/female_image.png"),
                ),
              ),
            ]),
      ),
      const SizedBox(
        height: 50,
      ),
    ],);
  }

  Widget _buildCheckedBoxText() {
    return Row(
      children: [ Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith(getColor),
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
        const Text(
          "By continuing you accept our Privacy Policy and Term of Use0",
          style: TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.w400,
              fontSize: 10),
        )
      ],
    );
  }

  Widget _buildSignUpButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BodyMeasurementPage(),
            ));
      },
      child: Padding(
        padding:EdgeInsets.only(left: 66.w, right: 67.w),
        child: Container(
          height: 40.h,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.red[200]),
          child: const Center(
              child: Text(
                "Signup",
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
        ),
      ),
    );
  }

  Widget _buildLoginTextLine(){
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Already have an account?",
            style:
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          Text("Login",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.red.shade200))
        ],
      ),
    );
  }
}
