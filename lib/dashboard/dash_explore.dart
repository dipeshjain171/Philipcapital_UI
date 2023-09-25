import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DashExplore extends StatefulWidget {
  @override
  _DashExploreState createState() => new _DashExploreState();
}

class _DashExploreState extends State<DashExplore> {

List exploreList = [
  {
    "id": "001",
    "title" : "Advisory",
    "icon" : "assets/images/advisory.svg",
  },
  {
    "id": "002",
    "title" : "PMS",
    "icon" : "assets/images/pms.svg",
  },
  {
    "id": "003",
    "title" : "NBFC",
    "icon" : "assets/images/nbfc.svg",
  },
  {
    "id": "004",
    "title" : "MTF",
    "icon" : "assets/images/mtf.svg",
  },
  {
    "id": "005",
    "title" : "Taxation",
    "icon" : "assets/images/taxation.svg",
  },
  {
    "id": "006",
    "title" : "Personal Loan",
    "icon" : "assets/images/peronalloan.svg",
  },
];


  

  @override
  Widget build(BuildContext context) {

  var maxWidth = MediaQuery.of(context).size.width / 3;
  var width = MediaQuery.of(context).size.width;
  var columns = (width ~/ maxWidth) + 1;
  var columnWidth = width / columns;
  var aspectRatio = columnWidth / 90;

    return Container(
      child: Column(
        children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(bottom: 15),
          child: Text('Explore More',
          style: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.subtitle1,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            fontSize: 15
          ),
          ),
        ),
        GridView.builder(
          primary: false,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: maxWidth, 
            childAspectRatio: aspectRatio,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemCount: exploreList == null ? 0 : exploreList.length,
          itemBuilder: (BuildContext context, int index) {
              Map item = exploreList[index];
              return InkWell(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Card(
                        elevation: 5,
                        shadowColor: Theme.of(context).shadowColor.withOpacity(0.35), 
                        color: Theme.of(context).colorScheme.surface,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(width: 1, color: Colors.grey.withOpacity(0.2))
                        ),
                        child: Container(
                          width: 64, 
                          height: 64,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            '${item["icon"]}',
                            fit: BoxFit.contain,
                          ),
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text('${item["title"]}',
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.subtitle1,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                            fontSize: 13
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}