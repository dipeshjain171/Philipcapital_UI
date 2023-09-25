import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FundsLimit extends StatefulWidget {
  @override
  _FundsLimitState createState() => new _FundsLimitState();
}

class _FundsLimitState extends State<FundsLimit> {
 

List limitList = [
  {
    "id": "001",
    "title" : "Ledger Balance",
    "subtitle" : "",
    "amount" : "20,45,042",
  },
  {
    "id": "002",
    "title" : "Collaterals ",
    "subtitle" : "",
    "amount" : "20,45,042",
  },
  {
    "id": "003",
    "title" : "Margin Utilized",
    "subtitle" : "(Equity)",
    "amount" : "20,45,042",
  },
  {
    "id": "004",
    "title" : "Margin Utilized",
    "subtitle" : "(Futures & Options)",
    "amount" : "20,45,042",
  },
  {
    "id": "005",
    "title" : "Margin Utilized",
    "subtitle" : "(Currency)",
    "amount" : "20,45,042",
  },
  {
    "id": "006",
    "title" : "Early Pay-in-Effect",
    "subtitle" : "",
    "amount" : "20,45,042",
  },
  {
    "id": "007",
    "title" : "Net Limit Available",
    "subtitle" : "",
    "amount" : "20,45,042",
  },
];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: limitList == null ? 0 : limitList.length,
      itemBuilder: (BuildContext context, int index) {
        Map item = limitList[index];
        return Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor),
            )
          ),
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${item["title"]}', textAlign: TextAlign.left,
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.subtitle2,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                    ),
                  ),
                  item["subtitle"] == "" ?
                  Container() :
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text('${item["subtitle"]}', textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.caption,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
              
              Text('₹ ${item["amount"]}', textAlign: TextAlign.right,
                style: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.subtitle1,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}