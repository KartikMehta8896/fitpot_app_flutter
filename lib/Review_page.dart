import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 30.w, right: 30.w),
          child: Column(
            children: [
              const SizedBox(
                height: 108,
              ),
              _buildImage(),
              const SizedBox(
                height: 30,
              ),
              _buildTextRow(),
              const SizedBox(
                height: 22,
              ),
              _buildEnterYourReview(),
              const SizedBox(height: 49,),
              _buildNextButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Center(
      child: Image(
        image: const AssetImage("assets/images/review_page_image.png"),
        height: 145.h,
        width: 217.w,
      ),
    );
  }

  Widget _buildTextRow() {
    return Padding(
      padding:  EdgeInsets.only(left: 10.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "How you feel about Fitness",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Please Rate our app",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
              child: Text(
            "Good",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                color: Colors.red.shade200),
          )),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 31.sm,
              ),
              const SizedBox(
                width: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 31.sm,
              ),
              const SizedBox(
                width: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 31.sm,
              ),
              const SizedBox(
                width: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 31.sm,
              ),
              const SizedBox(
                width: 15,
              ),
              Icon(
                Icons.star_border_purple500_outlined,
                color: Colors.yellow[700],
                size: 31.sm,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildEnterYourReview() {
    return TextFormField(maxLines: 5,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
            hintText: 'Enter your Review',
            hintStyle: TextStyle(color: Colors.grey.shade500)));
  }

  Widget _buildNextButton(){
    return InkWell(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => (),));
      },
      child: Container(
        height: 45.h,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.red[200]),
        child: const Center(
            child: Text(
              "Next  >",
              style: TextStyle(
                color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700
              ),
            )),
      ),
    );
  }
}
