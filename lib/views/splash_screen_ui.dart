import 'package:dti_love_project/views/introduction_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _Splash_screenUIState();
}



class _Splash_screenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    // Delay 3 second and open to IntroductionUI page
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      // until 3 sec open to IntroductionUI page
      ()=>Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => IntroductionUI(),
        ),
      )

    );

    super.initState();
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'DTI Love 2024',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'WoW WoW WoW',
                  style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                CircularProgressIndicator(
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Created by Dusit",
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    color: Colors.yellow,
                  ),
                ),
                Text(
                  "Southeast Asia University",
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    color: Colors.yellow,
                  ),
                ),
                Text(
                  "Copyright ©️DTI❤️❤️❤️",
                  style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.023,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
