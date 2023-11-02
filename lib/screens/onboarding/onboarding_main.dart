import 'package:flutter/material.dart';
import 'package:med_fl/screens/author/author_screen.dart';
import 'package:med_fl/screens/onboarding/page_1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  ////Controller to keep track of which page we are on
  PageController _controller = PageController();

  ////Keep track if we are on the last page
  bool onLastPge = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          ////Page view
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPge = (index == 2);
              });
            },
            children:  [
              Page1(),
            ],
          ),

          ////Dot indicator
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const AuthorScreen();
                    },
                    ),
                    );
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                          "Keyingisi",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          )
                      ),
                    ),
                      width: 361,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff074cff))
                  )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
