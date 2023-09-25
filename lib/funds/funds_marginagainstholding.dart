import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FundsMarginAgainstHolding extends StatefulWidget {
  @override
  _FundsMarginAgainstHoldingState createState() => new _FundsMarginAgainstHoldingState();
}

class _FundsMarginAgainstHoldingState extends State<FundsMarginAgainstHolding> {


List marginholdingList = [
  {
    "id": "001",
    "title" : "Jubilant Ingrevia Li",
    "margin" : "15",
    "amount" : "4,212",
  },
  {
    "id": "002",
    "title" : "Borosil Renewals",
    "margin" : "20",
    "amount" : "4,212",
  },
  {
    "id": "003",
    "title" : "Welspun India Pvt Ltd",
    "margin" : "15",
    "amount" : "4,212",
  },
  {
    "id": "004",
    "title" : "KPIT Technologies Pvt Ltd",
    "margin" : "20",
    "amount" : "4,212",
  },
  {
    "id": "005",
    "title" : "Reliance Industries",
    "margin" : "2",
    "amount" : "4,212",
  },
];
 bool checkedValue = false;


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
              color: Theme.of(context).shadowColor.withOpacity(0.35),
              blurRadius: 3,
              spreadRadius: 0,
              offset: Offset(
                0,
                -1,
              ),
            )
          ]
        ),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Additional Margin',
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.caption,
                    letterSpacing: 1.2,
                    fontSize: 14
                  ),
                ),
                Text('₹ 4,212.40',
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.subtitle1,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    fontSize: 15
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).colorScheme.secondary,
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      alignment: Alignment.center,
                    ),
                    child: Text('Create Margin',
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.button,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
        
      ),
      body: ListView.separated(
        primary: false,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: marginholdingList == null ? 0 : marginholdingList.length,
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor),
              )
            ),
          );
        },
        itemBuilder: (BuildContext context, int index) {
          Map item = marginholdingList[index];
          return Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 32,
                      alignment: Alignment.center,
                      child: Checkbox(
                        activeColor: Theme.of(context).colorScheme.primary,
                        side: BorderSide(width: 1, color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        value: checkedValue, 
                        onChanged: (newValue) {
                           setState(() {
                            checkedValue = !checkedValue;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: Text('${item["title"]}', textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.subtitle2,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      margin: EdgeInsets.only(left: 32),
                      color: Theme.of(context).colorScheme.surface,
                      child: TextFormField(
                        initialValue: '${item["margin"]}',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                          isDense: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Amount', textAlign: TextAlign.left,
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.caption,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.2,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text('₹ ${item["amount"]}', textAlign: TextAlign.right,
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.subtitle1,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      ),
    );
    
  }
}