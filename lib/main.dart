import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_banking_demo/pages/screens/email_mobile_signup.dart';

void main() {
  runApp(const Homescreen());
}




class Homescreen extends StatelessWidget {
  const Homescreen({super.key});


  void _onSkip(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => EmailMobileSignup()),
    );
  }
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/emailAndPhone': (context) => EmailMobileSignup()
      },
        debugShowCheckedModeBanner: false,
        home: Splashscreens()
    );
  }}


class Splashscreens extends StatelessWidget {
  const Splashscreens({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(

      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      infiniteAutoScroll: true,


      pages: [

        PageViewModel(
            title: "Simple Process",
            body: "Qick and Simple",
            image: Center(
              child: Image.asset("assets/images/introductory2.png"),
            )),
        PageViewModel(
          title: "Welcome the Best Bank",
          body: "Qick and Simple",
          image: Center(
            child: Image.asset("assets/images/introductory3.png"),
          ),),
        PageViewModel(
            title: "Welcome the Best Bank",
            body: "Qick and Simple",
            image: Center(
              child: SvgPicture.asset("assets/images/introductory4.svg"),
            )),

      ],



      onDone: () => {

      },
      onSkip: () => {
Navigator.pushNamed(context, '/emailAndPhone')


      },
      // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text(
          'Skip', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white)),
      next: const Icon(Icons.arrow_forward),
      done: const Text(
          'Done', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),

      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );




  }
}





