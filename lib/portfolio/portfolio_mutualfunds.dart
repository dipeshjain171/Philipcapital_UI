import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioMutualFunds extends StatefulWidget {
  @override
  _PortfolioMutualFundsState createState() => new _PortfolioMutualFundsState();
}

class _PortfolioMutualFundsState extends State<PortfolioMutualFunds> {
 

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(bottom: 15),
          child: Text('Mutual Funds',
          style: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.subtitle1,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            fontSize: 15
          ),
          ),
        ),
        ],
      ),
    );
  }
}