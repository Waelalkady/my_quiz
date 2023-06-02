import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:splashscreen/pages/page2.dart';
import 'package:splashscreen/pages/page3.dart';
import '../pages/page1.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  PageController _controller= PageController();
  bool last_page= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index){
              setState(() {
                last_page=(index==2);
              });
            },
            children: [
              page1(),
              page2(),
              page3()
                ],
              ),


          Container(
              alignment: Alignment(0,0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                  onTap: (){
                   _controller.jumpToPage(2);
                  },
                    child: Text("skip"),
                  ),

                  SmoothPageIndicator(controller: _controller, count: 3),

                  last_page ?
                  GestureDetector(
                      onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context){
                         return Login();
                       },
                       ),
                       );
                      },
                      child: Text("دخول"),
                  )
                      :GestureDetector(
                    onTap: (){
                      _controller.nextPage(duration: Duration(milliseconds: 250), curve: Curves.easeIn,
                      );
                    },
                    child: Text("التالي"),
                  ),

                ],
              ),
          ),
        ],
      )
    );
  }
}