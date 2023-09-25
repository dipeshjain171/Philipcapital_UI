import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/funds/addfunds.dart';
import 'package:phc/funds/withdrawfunds.dart';

class FundsFundTransfer extends StatefulWidget {
  @override
  _FundsFundTransferState createState() => new _FundsFundTransferState();
}

class _FundsFundTransferState extends State<FundsFundTransfer> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
          ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(0.25),
              blurRadius: 4,
              spreadRadius: 0,
              offset: Offset(
                0,
                -1,
              ),
            )
          ]
        ),
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: (){
                  Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (BuildContext context) => WithdrawFunds()
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  primary: Theme.of(context).colorScheme.secondary,                       
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                  alignment: Alignment.center,
                  side: BorderSide(width: 1, color: Theme.of(context).colorScheme.secondary),
                ),
                child: Text('Withdraw',
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.button,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (BuildContext context) => AddFunds()
                  ),
                );
              }, 
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).colorScheme.secondary, 
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                alignment: Alignment.center,
              ),
              child: Text('Add Funds',
                style: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.button,
                ),
              ),
            ),
            ),
          ],
        ),
      ),
      body: Container(
      child: Column(
        children: [

        Container(
          padding: EdgeInsets.symmetric(horizontal : 15, vertical: 15),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
            border: Border(
              top: BorderSide(width: 1, color: Theme.of(context).dividerColor),
              bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor),
            ),
          ),
          child: Column(
            children: [
              Text('Current Balance',
                style: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.caption,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 1.7,
                  fontSize: 15,
                ),
                ),
                SizedBox(height: 10),
                Text('₹ 74,134',
                style: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.headline2,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.1,
                ),
              ),
            ],
          ),
        ),
        
        Padding(
          padding: EdgeInsets.all(10),
          child: InkWell(
            onTap: (){},
            child: Card(
              elevation: 4,
              shadowColor: Theme.of(context).shadowColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: ListTile(
                title: Text('View Transaction',
                style: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.subtitle2,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
                ),
                trailing: Icon(Icons.chevron_right_outlined)
              ),
            ),
          )
        ),

        ],
      ),
    ),
    );
  }
}