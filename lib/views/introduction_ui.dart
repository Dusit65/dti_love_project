import 'package:dti_love_project/views/home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.purple[100],
      body: IntroductionScreen(
        scrollPhysics: BouncingScrollPhysics(),
        autoScrollDuration: 2000,
        pages: [
          //car1
          PageViewModel(
            titleWidget: Text(
              "CAR001",
              style: GoogleFonts.kanit(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            image: Image.asset(
              "assets/images/car1.jpg"
            ),
            bodyWidget: Text(
              'AAA BBB CCC DDD EEEEEEEEEEEEEEEEEE'
            ),
          ),
          //car2
          PageViewModel(
            titleWidget: Text(
              "CAR002",
              style: GoogleFonts.kanit(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            image: Image.asset(
              "assets/images/car2.jpg"
            ),
            bodyWidget: Text(
              'AAA BBB CCC DDD EEEEEEEEEEEEEEEEEE'
            ),
          ),
          //car3
          PageViewModel(
            titleWidget: Text(
              "CAR003",
              style: GoogleFonts.kanit(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),

            ),
            image: Image.asset(
              "assets/images/car3.jpg"
            ),
            bodyWidget: Text(
              'AAA BBB CCC DDD EEEEEEEEEEEEEEEEEE'
            ),
          ),
          //car4
          PageViewModel(
            titleWidget: Text(
              "CAR004",
              style: GoogleFonts.kanit(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            image: Image.asset(
              "assets/images/car4.jpg"
            ),
            bodyWidget: Text(
              'AAA BBB CCC DDD EEEEEEEEEEEEEEEEEE'
            ),
          ),
          //car5
          PageViewModel(
            titleWidget: Text(
              "CAR005",
              style: GoogleFonts.kanit(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            image: Image.asset(
              "assets/images/car5.jpg"
            ),
            bodyWidget: Text(
              'AAA BBB CCC DDD EEEEEEEEEEEEEEEEEE'
            ),
          ),
        ],
        showSkipButton: true,
        skip: Text(
          "ข้าม",
        style: GoogleFonts.kanit(),
        ),
        onSkip: ()=> Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ), 
        ),
        dotsDecorator: DotsDecorator(
          size: Size(
            MediaQuery.of(context).size.height * 0.025,
            MediaQuery.of(context).size.width * 0.025
          ),
          color: Colors.grey,
          activeSize: Size(
            MediaQuery.of(context).size.height * 0.025,
            MediaQuery.of(context).size.width * 0.025
          ),
          activeColor: Colors.purple,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),

        ),
        next: Icon(
          Icons.arrow_forward,
        ),
        nextFlex: 0,
        done: Text(
          "เริ่มต้น",
          style: GoogleFonts.kanit(),
        ),
        onDone: ()=> Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ),
        ),
      ),
    );
  }
}