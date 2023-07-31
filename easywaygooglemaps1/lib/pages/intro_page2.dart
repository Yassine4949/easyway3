import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(40),
        color:Colors.white,
      child: Center(
        child: Column(
        children:[

          Lottie.asset('animations/animation.json',
            width:350,
            height: 350,
            fit: BoxFit.fill,),
            Text('page2',style: GoogleFonts.calligraffitti(fontSize: 35),),
        ],
      ),
    ),
    );
  }
}
