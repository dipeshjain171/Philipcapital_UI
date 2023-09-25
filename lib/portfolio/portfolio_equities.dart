import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/portfolio/analyser_bottomsheet.dart';
import 'package:phc/portfolio/portfolio_rateupdate.dart';
import 'package:phc/portfolio/portfolio_transaction.dart';

class PortfolioEquities extends StatefulWidget {
  @override
  _PortfolioEquitiesState createState() => new _PortfolioEquitiesState();
}

class _PortfolioEquitiesState extends State<PortfolioEquities> {
 

List portfolioequitiesList = [
  {
    "id": "001",
    "symbol" : "KOTAKBANK",
    "unrealisedgainloss" : "-1,452 (-08.80%)",
    "isloss" : true,
    "quantity" : "72",
    "purchaseprice" : "152.88",
    "closingprice" : "-70,452",
  },
  {
    "id": "002",
    "symbol" : "ABSLAMC",
    "unrealisedgainloss" : "₹ -4,212 (-28.80%)",
    "isloss" : true,
    "quantity" : "72",
    "purchaseprice" : "0.00",
    "closingprice" : "-70,452",
  },
  {
    "id": "003",
    "symbol" : "AJMERA",
    "unrealisedgainloss" : "1,212 (28.80%)",
    "isloss" : false,
    "quantity" : "72",
    "purchaseprice" : "152.88",
    "closingprice" : "-70,452",
  },
  {
    "id": "004",
    "symbol" : "APLLTD",
    "unrealisedgainloss" : "-3,212 (-28.80%)",
    "isloss" : true,
    "quantity" : "72",
    "purchaseprice" : "152.88",
    "closingprice" : "-70,452",
  },
  {
    "id": "005",
    "symbol" : "ASIANENE",
    "unrealisedgainloss" : "-3,212 (-28.80%)",
    "isloss" : true,
    "quantity" : "72",
    "purchaseprice" : "152.88",
    "closingprice" : "-70,452",
  },
  {
    "id": "006",
    "symbol" : "LIQUIDBEAS",
    "unrealisedgainloss" : "-3,212 (-28.80%)",
    "isloss" : true,
    "quantity" : "72",
    "purchaseprice" : "152.88",
    "closingprice" : "-70,452",
  },
  {
    "id": "007",
    "symbol" : "ITC",
    "unrealisedgainloss" : "-3,212 (-28.80%)",
    "isloss" : true,
    "quantity" : "72",
    "purchaseprice" : "152.88",
    "closingprice" : "-70,452",
  },
  {
    "id": "008",
    "symbol" : "SBI",
    "unrealisedgainloss" : "-3,212 (-28.80%)",
    "isloss" : true,
    "quantity" : "72",
    "purchaseprice" : "152.88",
    "closingprice" : "-70,452",
  },
];

  @override
  Widget build(BuildContext context) {

    return Container(
      child: ListView(
        children: [
          Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            // border: Border(
            //   top: BorderSide(width: 1, color: Theme.of(context).dividerColor),
            //   bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor),
            // ),
          ),
          
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.surface,
                  child: TextField(
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.subtitle2,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                    ),
                    autofocus: false,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      hintText: 'Search',
                      hintStyle: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.bodyText2,
                        letterSpacing: 1.8,
                        fontWeight: FontWeight.w300
                      ),
                      prefixIcon: Icon(Icons.search_outlined),
                      
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(4),
                          bottomLeft: Radius.circular(4),
                        ),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(4),
                          bottomLeft: Radius.circular(4),
                        ),
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.only(
                          topRight: Radius.circular(4),
                          bottomRight: Radius.circular(4),
                          topLeft: Radius.circular(0),
                          bottomLeft: Radius.circular(0),
                        ),
                ),
                child: IconButton(
                  icon: Icon(Icons.tune_outlined),
                  onPressed: (){}, 
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(4)
                ),
                child: IconButton(                  
                  icon: Icon(Icons.query_stats_outlined),
                  onPressed: (){
                    showModalBottomSheet(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      context: context, builder: (BuildContext context) { 
                        return AnalyserBottomSheet();
                      }, 
                    );
                  }, 
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(4)
                ),
                child: IconButton(                  
                  icon: Icon(Icons.shortcut_outlined),
                  onPressed: (){}, 
                ),
              ),
            ],
          ),
        ),
          Container(
          padding: EdgeInsets.symmetric(horizontal : 15, vertical: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
            border: Border(
              top: BorderSide(width: 1, color: Theme.of(context).dividerColor),
              bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Current Value',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.caption,
                          letterSpacing: 1.5
                        ),
                        ),
                        SizedBox(height: 5),
                        Text('₹ 1,74,134',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle1,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          fontSize: 15
                        ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Unrealised Gain/Loss',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.caption,
                          letterSpacing: 1.5
                        ),
                        ),
                        SizedBox(height: 5),
                        Text('₹ -70,452 (-28.80%)',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle1,
                          fontWeight: FontWeight.w500,
                          color: Colors.redAccent.shade700,
                          fontSize: 15
                        ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Invested Value',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.caption,
                          letterSpacing: 1.5
                        ),
                        ),
                        SizedBox(height: 5),
                        Text('₹ 2,44,590',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle1,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          fontSize: 15
                        ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Day Gain/Loss',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.caption,
                          letterSpacing: 1.5
                        ),
                        ),
                        SizedBox(height: 5),
                        Text('₹ 2,452 (+1.09%)',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle1,
                          fontWeight: FontWeight.w500,
                          color: Colors.greenAccent.shade700,
                          fontSize: 15
                        ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
          Container(
            padding: EdgeInsets.symmetric(horizontal : 15, vertical: 10),
            decoration: BoxDecoration(
              color: Theme.of(context).secondaryHeaderColor,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text('Symbol', textAlign: TextAlign.left,
                      style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 13
                        ),
                      ),
                    ),
                    
                    Expanded(
                      child: Text('Unrealised Gain/Loss', textAlign: TextAlign.right,
                      style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 13
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: Text('Quantity | Purchase Price', textAlign: TextAlign.left,
                      style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 13
                        ),
                      ),
                    ),
                    
                    Expanded(
                      child: Text('Closing Price', textAlign: TextAlign.right,
                      style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 13
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListView.separated(
          primary: false,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: portfolioequitiesList == null ? 0 : portfolioequitiesList.length,
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
            Map item = portfolioequitiesList[index];
            // return Container(
            //   child: Text('${item["title"]}'),
            // );
            return InkWell(
              onTap: (){
                Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (BuildContext context) => PortfolioTransaction()
                  ),
                );
              },
              child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text('${item["symbol"]}', textAlign: TextAlign.left,
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                        ),
                      ),
                      Expanded(
                        child: Text('₹ ${item["unrealisedgainloss"]}', textAlign: TextAlign.right,
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          color: item["isloss"] == true ? Colors.redAccent.shade700 : null,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.subtitle2,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.2,
                          ),
                          children: [
                            TextSpan(
                              text: '${item["quantity"]}',
                            ),
                            TextSpan(
                              text: ' | '
                            ),

                            item["purchaseprice"] == '0.00' ?
                            TextSpan(
                              text: '₹ ${item["purchaseprice"]}',
                              style: TextStyle(
                                color: Colors.redAccent.shade700,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                              ..onTap = (){
                                Navigator.push(context, 
                                  MaterialPageRoute(
                                    builder: (BuildContext context) => PortfolioRateUpdate()
                                  ),
                                );
                              },
                            )
                            : 
                            TextSpan(
                              text: '₹ ${item["purchaseprice"]}',
                            ),
                          ]
                        )
                      ),
                      ),
                      Expanded(
                        child: Text('₹ ${item["closingprice"]}', textAlign: TextAlign.right,
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                        ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            );
          }
        ),
          

        
        
        ],
      ),
    );
  }
}