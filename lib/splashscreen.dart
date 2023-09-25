import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}


class SplashScreenState extends State<SplashScreen>  with TickerProviderStateMixin {

late AnimationController _controller;
late Animation<double> _animation;
  
 @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3), 
      reverseDuration: const Duration(seconds: 5), 
      vsync: this, 
      // value: 0.1,
      lowerBound: 0.3,
      upperBound: 1.0,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller, 
      curve: Curves.fastOutSlowIn,       
      // reverseCurve: Curves.bounceOut
    );

    // _controller.forward();


    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement<void, void>(context, 
        MaterialPageRoute(
          builder: (BuildContext context) => Login()
        )
      );
    });


  }

  @override
    dispose() {
      _controller.dispose();
      super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ScaleTransition(
                    scale: _animation,
                    child: Container(
                      height: 100,
                      child: Image.asset(
                        Theme.of(context).brightness == Brightness.dark
                        ?'assets/images/logodark.png':'assets/images/logolight.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  

                  // FadeTransition(
                  //   opacity: _animation,
                  //   child:  RichText(
                  //     text: TextSpan(
                  //       children: [
                  //         TextSpan(
                  //           text: 'welcome to ',
                  //           style: Theme.of(context).textTheme.headline4!.merge(TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.w300, color: Colors.white)),
                  //         ),
                  //         TextSpan(
                  //           text: 'Pickle',
                  //           style: Theme.of(context).textTheme.headline4!.merge(TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.bold, color: Colors.white)),
                  //         ),
                          
                  //       ],
                  //     )
                  //   ),
                  // ),

                ],
              )
            ),
            
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('app version : ',
                    style: Theme.of(context).textTheme.bodyText2!.merge(TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.w100)),
                  ),
                  Text('1.0.0',
                    style: Theme.of(context).textTheme.bodyText2!.merge(TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.bold)),
                  ),

                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
