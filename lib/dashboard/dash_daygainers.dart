import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/widgets/bottomnavigation.dart';

class DashDayGainers extends StatefulWidget {
  @override
  _DashDayGainersState createState() => new _DashDayGainersState();
}

class _DashDayGainersState extends State<DashDayGainers> {

List daygainersList = [
  {
    "id": "001",
    "symbol" : "KOTAKBANK",
    "daygain" : "1,452",
    "quantity" : "72",
    "closingrate" : "1,772.05",
    "daygainpercent" : "1.62%",
  },
  {
    "id": "002",
    "symbol" : "ABSLAMC",
    "daygain" : "1,452",
    "quantity" : "72",
    "closingrate" : "1,772.05",
    "daygainpercent" : "1.62%",
  },
  {
    "id": "003",
    "symbol" : "AJMERA",
    "daygain" : "1,452",
    "quantity" : "72",
    "closingrate" : "1,772.05",
    "daygainpercent" : "1.62%",
  },
  {
    "id": "004",
    "symbol" : "APLLTD",
    "daygain" : "1,452",
    "quantity" : "72",
    "closingrate" : "1,772.05",
    "daygainpercent" : "1.62%",
  },
  {
    "id": "005",
    "symbol" : "ASIANENE",
    "daygain" : "1,452",
    "quantity" : "72",
    "closingrate" : "1,772.05",
    "daygainpercent" : "1.62%",
  },
  {
    "id": "006",
    "symbol" : "LIQUIDBEAS",
    "daygain" : "1,452",
    "quantity" : "72",
    "closingrate" : "1,772.05",
    "daygainpercent" : "1.62%",
  },
  {
    "id": "007",
    "symbol" : "ITC",
    "daygain" : "1,452",
    "quantity" : "72",
    "closingrate" : "1,772.05",
    "daygainpercent" : "1.62%",
  },
  {
    "id": "008",
    "symbol" : "SBI",
    "daygain" : "1,452",
    "quantity" : "72",
    "closingrate" : "1,772.05",
    "daygainpercent" : "1.62%",
  },{
    "id": "006",
    "symbol" : "LIQUIDBEAS",
    "daygain" : "1,452",
    "quantity" : "72",
    "closingrate" : "1,772.05",
    "daygainpercent" : "1.62%",
  },
  {
    "id": "007",
    "symbol" : "ITC",
    "daygain" : "1,452",
    "quantity" : "72",
    "closingrate" : "1,772.05",
    "daygainpercent" : "1.62%",
  },
  {
    "id": "008",
    "symbol" : "SBI",
    "daygain" : "1,452",
    "quantity" : "72",
    "closingrate" : "1,772.05",
    "daygainpercent" : "1.62%",
  },{
    "id": "006",
    "symbol" : "LIQUIDBEAS",
    "daygain" : "1,452",
    "quantity" : "72",
    "closingrate" : "1,772.05",
    "daygainpercent" : "1.62%",
  },
  {
    "id": "007",
    "symbol" : "ITC",
    "daygain" : "1,452",
    "quantity" : "72",
    "closingrate" : "1,772.05",
    "daygainpercent" : "1.62%",
  },
  {
    "id": "008",
    "symbol" : "SBI",
    "daygain" : "1,452",
    "quantity" : "72",
    "closingrate" : "1,772.05",
    "daygainpercent" : "1.62%",
  },{
    "id": "006",
    "symbol" : "LIQUIDBEAS",
    "daygain" : "1,452",
    "quantity" : "72",
    "closingrate" : "1,772.05",
    "daygainpercent" : "1.62%",
  },
  {
    "id": "007",
    "symbol" : "ITC",
    "daygain" : "1,452",
    "quantity" : "72",
    "closingrate" : "1,772.05",
    "daygainpercent" : "1.62%",
  },
  {
    "id": "008",
    "symbol" : "SBI",
    "daygain" : "1,452",
    "quantity" : "72",
    "closingrate" : "1,772.05",
    "daygainpercent" : "1.62%",
  },
];

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total : ', textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.caption,
              fontWeight: FontWeight.w400,
              fontSize: 16,
              letterSpacing: 1.2,
            ),
            ),
            Text('₹ 6,134', textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.subtitle2,
              fontWeight: FontWeight.bold,
              color: Colors.greenAccent.shade700,
              fontSize: 16,
              letterSpacing: 1.2,
            ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 3,
        titleSpacing: 10,
        title: Text('Day Gainers'),
        actions: <Widget>[
          Container(
            width: 42, height: 42,
            margin: EdgeInsets.symmetric(horizontal: 3, vertical: 10),
            child: IconButton(
              icon: Icon(Icons.notifications_outlined, size: 24),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: ListView(
        children: [

          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              border: Border(
                top: BorderSide(width: 1, color: Theme.of(context).dividerColor),
                bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor),
              ),
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
                      child: Text('Day Gain', textAlign: TextAlign.right,
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
                      child: Text('Quantity | Closing Rate', textAlign: TextAlign.left,
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
                      child: Text('Day Gain %', textAlign: TextAlign.right,
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
            itemCount: daygainersList == null ? 0 : daygainersList.length,
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
              Map item = daygainersList[index];
              return InkWell(
                onTap: (){},
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
                          child: Text('₹ ${item["daygain"]}', textAlign: TextAlign.right,
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.subtitle2,
                            color: Colors.greenAccent.shade700,
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
                              TextSpan(
                                text: '₹ ${item["closingrate"]}',
                              ),
                            ]
                          )
                        ),
                        ),
                        Expanded(
                          child: Text('${item["daygainpercent"]}', textAlign: TextAlign.right,
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.subtitle2,
                            color: Colors.greenAccent.shade700,
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