import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/dashboard/dash_daygainers.dart';
import 'package:phc/dashboard/dash_daylosers.dart';
import 'package:phc/funds/addfunds.dart';
import 'package:phc/portfolio/portfolio.dart';

class DashAccordionCard extends StatefulWidget {
  @override
  _DashAccordionCardState createState() => new _DashAccordionCardState();
}

class _DashAccordionCardState extends State<DashAccordionCard> {

List accordionList = [
  {
    "id": "001",
    "title" : "Equities",
    'isgain' : true,
    "isactivated" : true,
  },
  {
    "id": "002",
    "title" : "Future & Options",
    'isgain' : true,
    "isactivated" : true,
  },
  {
    "id": "003",
    "title" : "Commodities",
    'isgain' : null,
    "isactivated" : false,
  },
  {
    "id": "004",
    "title" : "Mutual Funds",
    'isgain' : false,
    "isactivated" : true,
  },
  {
    "id": "005",
    "title" : "Currency",
    'isgain' : null,
    "isactivated" : false,
  },
  {
    "id": "006",
    "title" : "Bonds",
    'isgain' : null,
    "isactivated" : false,
  },
];


  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
        ListView.separated(
          primary: false,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: accordionList == null ? 0 : accordionList.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(height: 10);
          },
          itemBuilder: (BuildContext context, int index) {
              Map item = accordionList[index];
              return 
              item['isactivated']== false ?
              Card(
                elevation: 5,
                shadowColor: Theme.of(context).shadowColor.withOpacity(0.35),        
                color: Theme.of(context).colorScheme.surface,           
                child: Theme(
                  data: ThemeData(
                    dividerColor: Colors.transparent
                  ), 
                  child: ListTile(         
                  trailing: Container(
                    child: 
                    Container(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Theme.of(context).colorScheme.primary,
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        ),
                        onPressed: (){}, 
                        child: Text('Activate Now', 
                          style: GoogleFonts.roboto(
                            decoration: TextDecoration.underline,
                            textStyle: Theme.of(context).textTheme.button,
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 12,
                            fontWeight: FontWeight.w400
                          ),
                        ),
                      ),
                    )
                  ),
                  title: Text('${item["title"]}',
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.subtitle1,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    fontSize: 15
                  ),
                  ),
                  ),
                ),
              )
              :
              Card(
                elevation: 5,
                shadowColor: Theme.of(context).shadowColor.withOpacity(0.35),        
                color: Theme.of(context).colorScheme.surface,        
                child: Theme(
                  data: ThemeData(
                    dividerColor: Colors.transparent
                  ), 
                  child: ExpansionTile(         
                  initiallyExpanded : index==selected,     
                  tilePadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  backgroundColor: Theme.of(context).colorScheme.surface,   
                  trailing: Container(
                    child: 
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('₹ 19,24,696',
                        style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2,
                        ),
                        ),
                        item['isgain']== false ?
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.redAccent.shade700.withOpacity(0.2)
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                              Text('6.25%',
                              style: GoogleFonts.robotoCondensed(
                                textStyle: Theme.of(context).textTheme.subtitle2,
                                fontWeight: FontWeight.w600,
                                color: Colors.redAccent.shade700,
                                fontSize: 13,
                                letterSpacing: 1.2,
                              ),
                              ),
                              Container(
                                width: 18, height: 24,
                                alignment: Alignment.center,
                                child: Icon(Icons.arrow_drop_down, color: Colors.redAccent.shade700),
                              )
                            ],
                          ),
                        )
                        :
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.greenAccent.shade700.withOpacity(0.2)
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                              Text('6.25%',
                              style: GoogleFonts.robotoCondensed(
                                textStyle: Theme.of(context).textTheme.subtitle2,
                                fontWeight: FontWeight.w600,
                                color: Colors.greenAccent.shade700,
                                fontSize: 13,
                                letterSpacing: 1.2,
                              ),
                              ),
                              Container(
                                width: 18, height: 24,
                                alignment: Alignment.center,
                                child: Icon(Icons.arrow_drop_up, color: Colors.greenAccent.shade700),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ),
                  title: Text('${item["title"]}',
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.subtitle1,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    fontSize: 15
                  ),
                  ),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1, color: Theme.of(context).dividerColor)
                        )
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            width: double.infinity,
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
                                          Text('Invested Value',
                                          style: GoogleFonts.robotoCondensed(
                                            textStyle: Theme.of(context).textTheme.caption,
                                            letterSpacing: 1.5
                                          ),
                                          ),
                                          SizedBox(height: 3),
                                          Text('₹ 9,27,404',
                                          style: GoogleFonts.robotoCondensed(
                                            textStyle: Theme.of(context).textTheme.subtitle2,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.2,
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
                                          Text('Current Value',
                                          style: GoogleFonts.robotoCondensed(
                                            textStyle: Theme.of(context).textTheme.caption,
                                            letterSpacing: 1.5
                                          ),
                                          ),
                                          SizedBox(height: 3),
                                          Text('₹ 19,24,696',
                                          style: GoogleFonts.robotoCondensed(
                                            textStyle: Theme.of(context).textTheme.subtitle2,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1.2,
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
                                          Text('Portfolio Gain/Loss',
                                          style: GoogleFonts.robotoCondensed(
                                            textStyle: Theme.of(context).textTheme.caption,
                                            letterSpacing: 1.5
                                          ),
                                          ),
                                          SizedBox(height: 3),
                                          Text('₹ 57,984',
                                          style: GoogleFonts.robotoCondensed(
                                            textStyle: Theme.of(context).textTheme.subtitle2,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.greenAccent.shade700,
                                            letterSpacing: 1.2,
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
                                          Text("Today's Gain/Loss",
                                          style: GoogleFonts.robotoCondensed(
                                            textStyle: Theme.of(context).textTheme.caption,
                                            letterSpacing: 1.5
                                          ),
                                          ),
                                          SizedBox(height: 3),
                                          Text('₹ 441',
                                          style: GoogleFonts.robotoCondensed(
                                            textStyle: Theme.of(context).textTheme.subtitle2,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.greenAccent.shade700,
                                            letterSpacing: 1.2,
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
                                      child: InkWell(
                                        onTap: (){
                                          Navigator.push(context, 
                                            MaterialPageRoute(
                                              builder: (BuildContext context) => DashDayGainers()
                                            ),
                                          );
                                        },
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('No. of Gainers/Gain',
                                            style: GoogleFonts.robotoCondensed(
                                              textStyle: Theme.of(context).textTheme.caption,
                                              letterSpacing: 1.5
                                            ),
                                            ),
                                            SizedBox(height: 3),
                                            RichText(
                                              text: TextSpan(
                                                style: GoogleFonts.robotoCondensed(
                                                  textStyle: Theme.of(context).textTheme.subtitle2,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 1.2,
                                                  decoration: TextDecoration.underline,
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: '13'
                                                  ),
                                                  TextSpan(
                                                    text: ' / '
                                                  ),
                                                  TextSpan(
                                                    text: '₹ 6,753',
                                                    style: TextStyle(
                                                      color: Colors.greenAccent.shade700
                                                    ),
                                                  ),
                                                ]
                                              )
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: InkWell(
                                        onTap: (){
                                          Navigator.push(context, 
                                            MaterialPageRoute(
                                              builder: (BuildContext context) => DashDayLosers()
                                            ),
                                          );
                                        },
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text('No. of Losers/Loss',
                                            style: GoogleFonts.robotoCondensed(
                                              textStyle: Theme.of(context).textTheme.caption,
                                              letterSpacing: 1.5
                                            ),
                                            ),
                                            SizedBox(height: 3),
                                            RichText(
                                              text: TextSpan(
                                                style: GoogleFonts.robotoCondensed(
                                                  textStyle: Theme.of(context).textTheme.subtitle2,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 1.2,
                                                  decoration: TextDecoration.underline,
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: '21'
                                                  ),
                                                  TextSpan(
                                                    text: ' / '
                                                  ),
                                                  TextSpan(
                                                    text: '₹ 6,312',
                                                    style: TextStyle(
                                                      color: Colors.redAccent.shade700
                                                    ),
                                                  ),
                                                ]
                                              )
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                  ],
                                ),

                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(width: 1, color: Theme.of(context).dividerColor)
                              )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                
                                ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) => AddFunds()
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Theme.of(context).colorScheme.secondary, 
                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                    alignment: Alignment.center,
                                  ),
                                  child: Text('Add Funds',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.button,
                                      fontSize: 11
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                OutlinedButton(
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) => Portfolio(showCustomer: item['title'],)),
                                    );
                                  },
                                  style: OutlinedButton.styleFrom(
                                    primary: Theme.of(context).colorScheme.onSecondary,                       
                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                    alignment: Alignment.center,
                                    side: BorderSide(width: 1, color: Theme.of(context).colorScheme.onSecondary ),
                                  ),
                                  child: Text('View Details',
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.button,
                                      color: Theme.of(context).colorScheme.onSecondary,
                                      fontSize: 11
                                    ),
                                  ),
                                ),


                              ],
                            ),
                          ),
                          

                        ],
                      ),
                    )
                    
                  ],
                  ),
                ),
              )
              ;
            },
          ),

        ],
      ),
    );
  }
}