import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportAdvisory extends StatefulWidget {
  @override
  _ReportAdvisoryState createState() => new _ReportAdvisoryState();
}

class _ReportAdvisoryState extends State<ReportAdvisory> {



List tradingList = [
  {
    "id": "001",
    "title" : "Phillip Capital Equity Advisory",
    "description" : "Phillip Capital Equity Advisory is a convenient and discipline advisory platform enabling a client to build a long term portfolio.",
  },
  {
    "id": "002",
    "title" : "Phillip Capital Equity Advisory",
    "description" : "Phillip Capital Equity Advisory is a convenient and discipline advisory platform enabling a client to build a long term portfolio.",
  },
  {
    "id": "003",
    "title" : "Phillip Capital Equity Advisory",
    "description" : "Phillip Capital Equity Advisory is a convenient and discipline advisory platform enabling a client to build a long term portfolio.",
  },
  {
    "id": "004",
    "title" : "Phillip Capital Equity Advisory",
    "description" : "Phillip Capital Equity Advisory is a convenient and discipline advisory platform enabling a client to build a long term portfolio.",
  },
  {
    "id": "005",
    "title" : "Phillip Capital Equity Advisory",
    "description" : "Phillip Capital Equity Advisory is a convenient and discipline advisory platform enabling a client to build a long term portfolio.",
  },
  {
    "id": "006",
    "title" : "Phillip Capital Equity Advisory",
    "description" : "Phillip Capital Equity Advisory is a convenient and discipline advisory platform enabling a client to build a long term portfolio.",
  },
];

  @override
  Widget build(BuildContext context) {

    return ListView(
      children: [
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
                      child: Text('${item["title"]}',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text('${item["description"]}',
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.caption,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.5,
                      ),
                      ),
                    ),
                    Container(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          primary: Theme.of(context).colorScheme.primary,
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              'click here for more details',
                              style: GoogleFonts.robotoCondensed(
                                textStyle: Theme.of(context).textTheme.button,
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            SizedBox(width: 3),
                            Icon(Icons.east_outlined, size: 18,)
                          ],
                        )
                      ),
                    ],
                  ),
                  ),
                  ],
                ),
              );
            }
          ),
      ],
    );
    
  }
}