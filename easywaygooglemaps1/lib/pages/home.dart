import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Loginscreen.dart';
import 'intro_page1.dart';
import 'intro_page2.dart';
import 'intro_page3.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _controller= PageController();
  bool onLastPage=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged:(index) {
              setState(() {
                onLastPage=(index==2);
              });


            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                // skip
                GestureDetector(
                  onTap:(){
                    _controller.jumpToPage(2);
          },
                    child: Text('skip')),

              SmoothPageIndicator(controller: _controller , count: 3,),

              // next or done
                onLastPage
                ? GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return LoginScreen();
                        },),);
                    },
                    child: Text('done'),
    )
                : GestureDetector(
                onTap:(){
                _controller.nextPage(duration: Duration(milliseconds:500),
                curve: Curves.easeIn,

                );
                },
                child: Text('next'),
    ),


              ],
            ),
      ),
    ],
      ),
     );
  }
}
