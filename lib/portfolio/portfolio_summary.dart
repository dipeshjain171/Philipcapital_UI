import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioSummary extends StatefulWidget {
  @override
  _PortfolioSummaryState createState() => new _PortfolioSummaryState();
}

class _PortfolioSummaryState extends State<PortfolioSummary> {
 

List portfolioList = [
  {
    "id": "001",
    "particular" : "Equities",
    "unrealisedgainloss" : "-27,287 (-5.50%)",
    "isloss" : true,
    "investment" : "7,02,904",
    "currentvalue" : "67,904",
  },
  {
    "id": "002",
    "particular" : "Future & Options",
    "unrealisedgainloss" : "0",
    "isloss" : null,
    "investment" : "0",
    "currentvalue" : "0.00",
  },
  {
    "id": "003",
    "particular" : "Mutual Funds",
    "unrealisedgainloss" : "1,63,877 (215.90%)",
    "isloss" : false,
    "investment" : "75,904",
    "currentvalue" : "2,38,877",
  },
  {
    "id": "004",
    "particular" : "Commodities",
    "unrealisedgainloss" : "0",
    "isloss" : null,
    "investment" : "0",
    "currentvalue" : "0.00",
  },
];
  @override
  Widget build(BuildContext context) {
  return ListView(
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
              // SizedBox(width: 10),
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
                  onPressed: (){
                    // showModalBottomSheet(
                    //   elevation: 2,
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.only(
                    //       topLeft: Radius.circular(20),
                    //       topRight: Radius.circular(20),
                    //     ),
                    //   ),
                    //   context: context, builder: (BuildContext context) { 
                    //     return FilterBottomSheet();
                    //   }, 
                    // );
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

        Padding(
        padding: EdgeInsets.all(10),
        child: ListView.separated(
          
          primary: false,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: portfolioList == null ? 0 : portfolioList.length,
          separatorBuilder: (BuildContext context, int index) {
            // return Container(
            //   decoration: BoxDecoration(
            //     border: Border(
            //       bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor),
            //     )
            //   ),
            // );
            return SizedBox(height: 10);
          },
          itemBuilder: (BuildContext context, int index) {
            Map item = portfolioList[index];
            // return Container(
            //   child: Text('${item["title"]}'),
            // );
            return InkWell(
              child: Card(
                elevation: 5,
                shadowColor: Theme.of(context).shadowColor.withOpacity(0.5),        
                color: Theme.of(context).colorScheme.surface,   
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Theme.of(context).dividerColor),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor)
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Particular',
                                style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.caption,
                                  letterSpacing: 1.5
                                ),
                                ),
                                SizedBox(height: 3),
                                Text('${item["particular"]}',
                                style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.subtitle1,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary,
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
                                SizedBox(height: 3),
                                Text('${item["unrealisedgainloss"]}',
                                style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.subtitle1,
                                  fontWeight: FontWeight.w500,
                                  color: item["isloss"] == true ? Colors.redAccent.shade700 : null,
                                  fontSize: 15
                                ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Investment',
                                style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.caption,
                                  letterSpacing: 1.5
                                ),
                                ),
                                SizedBox(height: 3),
                                Text('${item["investment"]}',
                                style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.subtitle1,
                                  fontWeight: FontWeight.w500,
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
                                Text('Current Value',
                                style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.caption,
                                  letterSpacing: 1.5
                                ),
                                ),
                                SizedBox(height: 3),
                                Text('${item["currentvalue"]}',
                                style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.subtitle1,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.5,
                                  fontSize: 15
                                ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        ),
        ),

        
      ],
    ); 
}
}