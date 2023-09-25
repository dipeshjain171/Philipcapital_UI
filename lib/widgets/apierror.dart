import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ApiError extends StatefulWidget {
  @override
  _ApiErrorState createState() => _ApiErrorState();
}

class _ApiErrorState extends State<ApiError> with TickerProviderStateMixin{

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
              width: 250,
              child: Image.asset('assets/images/error_404.png',
              fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Text('Oops, Page Not Found'.toUpperCase(),textAlign: TextAlign.center,
                    style: GoogleFonts.robotoCondensed(
                    textStyle: Theme.of(context).textTheme.headline5,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("This Page doesn't exist or was removed. we suggest you to go back to dashboard".toLowerCase(), textAlign: TextAlign.center,
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
                    child: Text('Back to Dashboard',
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
      ),
    );
  }
}
