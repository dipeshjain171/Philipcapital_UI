import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/widgets/menudrawer.dart';


class NoInternet extends StatefulWidget {
  @override
  _NoInternetState createState() => _NoInternetState();
}

class _NoInternetState extends State<NoInternet> with TickerProviderStateMixin{

  @override
  void initState() {   
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              child: Image.asset('assets/images/wireless.png',
              fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Text('Oops, No Internet Connection'.toUpperCase(),textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(
                    textStyle: Theme.of(context).textTheme.headline5,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Make sure wifi or cellular data is turned on and then try again.'.toLowerCase(), textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(
                    textStyle: Theme.of(context).textTheme.subtitle1,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: (){}, 
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).colorScheme.secondary, 
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      alignment: Alignment.center,
                    ),
                    child: Text('Try Again',
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.button,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
