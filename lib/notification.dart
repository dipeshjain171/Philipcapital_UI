import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/widgets/menudrawer.dart';


class NotificationList extends StatefulWidget {
  @override
  _NotificationListState createState() => _NotificationListState();
}

class _NotificationListState extends State<NotificationList> with TickerProviderStateMixin{

List notificationList = [
  {
    "id": "001",
    "title" : "Scheduled Account Settlements",
    "description" : "This  is to inform you that on account of settlement holiday on August 16, 2021 being Parsi New Year, multiple settlements have been scheduled on August 18, 2021.",
  },
  {
    "id": "002",
    "title" : "Scheduled Account Settlements",
    "description" : "This  is to inform you that on account of settlement holiday on August 16, 2021 being Parsi New Year, multiple settlements have been scheduled on August 18, 2021.",
  },
  {
    "id": "003",
    "title" : "Scheduled Account Settlements",
    "description" : "This  is to inform you that on account of settlement holiday on August 16, 2021 being Parsi New Year, multiple settlements have been scheduled on August 18, 2021.",
  },
  {
    "id": "004",
    "title" : "Scheduled Account Settlements",
    "description" : "This  is to inform you that on account of settlement holiday on August 16, 2021 being Parsi New Year, multiple settlements have been scheduled on August 18, 2021.",
  },
  {
    "id": "005",
    "title" : "Scheduled Account Settlements",
    "description" : "This  is to inform you that on account of settlement holiday on August 16, 2021 being Parsi New Year, multiple settlements have been scheduled on August 18, 2021.",
  },
  {
    "id": "006",
    "title" : "Scheduled Account Settlements",
    "description" : "This  is to inform you that on account of settlement holiday on August 16, 2021 being Parsi New Year, multiple settlements have been scheduled on August 18, 2021.",
  },
];

  @override
  void initState() {   
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // drawer: MenuDrawer(),
      appBar: AppBar(
        elevation: 3,
        titleSpacing: 10,
        title: Text('Notification'),
        actions: <Widget>[
         
        ],
      ),
      body: ListView(
      children: [
        ListView.separated(
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: notificationList == null ? 0 : notificationList.length,
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
              Map item = notificationList[index];
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
                  ],
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}
