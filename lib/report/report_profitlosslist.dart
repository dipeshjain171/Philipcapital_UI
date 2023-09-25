import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportProfitLossList extends StatefulWidget {
  @override
  _ReportProfitLossListState createState() => new _ReportProfitLossListState();
}

class _ReportProfitLossListState extends State<ReportProfitLossList> {
 

List tradingList = [
  {
    "id": "001",
    "title" : "NSECM",
    "date" : "13-Jul-2022",
    "narration" : "lorem ipsum dolor sit amet is a simply dummy text used for typesetting",
    "qty" : "100",
    "Avg. Buy Price" : "100.00",
    "Avg. Sell Price" : "100.00",
    "P&L Amount" : "100.00",
    "P&L Type" : "Realised ST/LT",
    "amount" : "500.00",
    "balance" : "793.12",
  },
  {
    "id": "002",
    "title" : "NSECM",
    "date" : "13-Jul-2022",
    "qty" : "100",
    "Avg. Buy Price" : "100.00",
    "Avg. Sell Price" : "100.00",
    "P&L Amount" : "100.00",
    "P&L Type" : "Intraday",
    "narration" : "lorem ipsum dolor sit amet is a simply dummy text used for typesetting",
    "amount" : "500.00",
    "balance" : "793.12",
  },
  {
    "id": "003",
    "title" : "NSECM",
    "date" : "13-Jul-2022",
    "qty" : "100",
    "Avg. Buy Price" : "100.00",
    "Avg. Sell Price" : "100.00",
    "P&L Amount" : "100.00",
    "P&L Type" : "Realised ST/LT",
    "narration" : "lorem ipsum dolor sit amet is a simply dummy text used for typesetting",
    "amount" : "500.00",
    "balance" : "793.12",
  },
  {
    "id": "004",
    "title" : "NSECM",
    "date" : "13-Jul-2022",
    "qty" : "100",
    "Avg. Buy Price" : "100.00",
    "Avg. Sell Price" : "100.00",
    "P&L Amount" : "100.00",
    "P&L Type" : "Intraday",
    "narration" : "lorem ipsum dolor sit amet is a simply dummy text used for typesetting",
    "amount" : "500.00",
    "balance" : "793.12",
  },
  {
    "id": "005",
    "title" : "NSECM",
    "date" : "13-Jul-2022",
    "qty" : "100",
    "Avg. Buy Price" : "100.00",
    "Avg. Sell Price" : "100.00",
    "P&L Amount" : "100.00",
    "P&L Type" : "Realised ST/LT",
    "narration" : "lorem ipsum dolor sit amet is a simply dummy text used for typesetting",
    "amount" : "500.00",
    "balance" : "793.12",
  },
  {
    "id": "006",
    "title" : "NSECM",
    "date" : "13-Jul-2022",
    "qty" : "100",
    "Avg. Buy Price" : "100.00",
    "Avg. Sell Price" : "100.00",
    "P&L Amount" : "100.00",
    "P&L Type" : "Intraday",
    "narration" : "lorem ipsum dolor sit amet is a simply dummy text used for typesetting",
    "amount" : "500.00",
    "balance" : "793.12",
  },
];


  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal : 15, vertical: 7),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            border: Border(
              bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor),
            ),
          ),
          child: RichText(
            text: TextSpan(
              style: GoogleFonts.robotoCondensed(
                textStyle: Theme.of(context).textTheme.caption,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.2,
              ),
              children: [
                TextSpan(
                  text: 'Ledger Last Updated on : '
                ),
                TextSpan(
                  text: 'Wed - 13 Jul 2022',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]
            )
          ),
        ),

          ListView.separated(
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: tradingList == null ? 0 : tradingList.length,
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
              Map item = tradingList[index];
              return Container(
                padding: EdgeInsets.symmetric(horizontal : 15, vertical: 10),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(bottom: 10),
                      child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.subtitle2,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.2,
                          ),
                          children: [
                            TextSpan(
                              text: '${item["title"]}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: ' | '
                            ),
                            TextSpan(
                              text: 'Qty :${item["qty"]}',
                            ),
                          ]
                        )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text('${item["narration"]}',
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.caption,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.5,
                      ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Avg. Buy Price',
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.caption,
                              letterSpacing: 1.5
                            ),
                            ),
                            SizedBox(height: 3),
                            Text('₹ ${item["Avg. Buy Price"]}',
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.subtitle2,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Avg. Sell Price',
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.caption,
                              letterSpacing: 1.5
                            ),
                            ),
                            SizedBox(height: 3),
                            Text('₹ ${item["Avg. Sell Price"]}',
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.subtitle2,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                  ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('P&L Amount',
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.caption,
                              letterSpacing: 1.5
                            ),
                            ),
                            SizedBox(height: 3),
                            Text('₹ ${item["P&L Amount"]}',
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.subtitle2,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('P&L Type',
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.caption,
                              letterSpacing: 1.5
                            ),
                            ),
                            SizedBox(height: 3),
                            Text('${item["P&L Type"]}',
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.subtitle2,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
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
              );
            }
          )
        ],
      ),
    );
  }
}