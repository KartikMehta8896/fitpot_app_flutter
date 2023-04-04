import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              SizedBox(
                height: 108,
              ),
              _buildImage(),
              SizedBox(
                height: 30,
              ),
              _buildTextRow(),
              SizedBox(
                height: 22,
              ),
              _buildEnterYourReview(),
              SizedBox(height: 49,),
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
        image: AssetImage("assets/images/review_page_image.png"),
        height: 145,
        width: 217,
      ),
    );
  }

  Widget _buildTextRow() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "How you feel about Fitness",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Please Rate our app",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          SizedBox(
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
          SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 31,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 31,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 31,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 31,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.star_border_purple500_outlined,
                color: Colors.yellow[700],
                size: 31,
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
        //       builder: (context) => const VerificationCodeScreen(),));
      },
      child: Container(
        height: 45,
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
