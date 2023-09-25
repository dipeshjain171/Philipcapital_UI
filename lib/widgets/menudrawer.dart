import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/constants.dart';
import 'package:phc/dashboard/dashboard.dart';
import 'package:phc/funds/funds.dart';
import 'package:phc/login.dart';
import 'package:phc/portfolio/portfolio.dart';
import 'package:phc/profile/profile.dart';
import 'package:phc/report/report.dart';
import 'package:phc/research.dart';
import 'package:phc/widgets/apierror.dart';
import 'package:phc/widgets/confirmation.dart';
import 'package:phc/widgets/nointernet.dart';

class MenuDrawer extends StatefulWidget {
  String selectedItem = "Dashboard";

  MenuDrawer(this.selectedItem) {}

  @override
  _MenuDrawerState createState() => new _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  bool isLightTheme = true;

  var _clientcode = [
    "102458",
    "202457",
    "302456",
    "402455",
    "502454",
    "602453",
    "702452",
    "802451"
  ];

  var selectedValue = '102458';

  List menuList = [
    {
      "id": "001",
      "title": "Dashboard",
      "icon": Icons.home_outlined,
    },
    {
      "id": "002",
      "title": "Portfolio",
      "icon": Icons.business_center_outlined,
    },
    {
      "id": "003",
      "title": "Funds",
      "icon": Icons.payments_outlined,
    },
    {
      "id": "004",
      "title": "Reports",
      "icon": Icons.insert_chart_outlined_outlined,
    },
    {
      "id": "005",
      "title": "Research",
      "icon": Icons.query_stats_outlined,
    },
    {
      "id": "006",
      "title": "Downloads",
      "icon": Icons.file_download_outlined,
    },
    {
      "id": "007",
      "title": "Settings",
      "icon": Icons.settings_outlined,
    },
    {
      "id": "008",
      "title": "Refer & Earn",
      "icon": Icons.share_outlined,
    },
    {
      "id": "009",
      "title": "No Internet Connection",
      "icon": Icons.wifi_off_outlined,
    },
    {
      "id": "010",
      "title": "API Error",
      "icon": Icons.warning_outlined,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      elevation: 1,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 1.0],
                  colors:
                      // [Colors.amber, Colors.teal],
                      isLightTheme
                          ? [PhcGradientLightColor1, PhcGradientLightColor2]
                          : [PhcGradientDarkColor1, PhcGradientDarkColor2]),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Augustus Harrell',
                        style: GoogleFonts.roboto(
                            textStyle:
                                Theme.of(context).appBarTheme.titleTextStyle,
                            color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Profile()),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                          shape: StadiumBorder(),
                          primary: Theme.of(context).colorScheme.onSecondary,
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          alignment: Alignment.center,
                          side: BorderSide(width: 1, color: Colors.white),
                        ),
                        child: Text(
                          'View Profile',
                          style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.button,
                              color: Colors.white,
                              fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          Container(
            // height: 64,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              border: Border(
                top:
                    BorderSide(width: 1, color: Theme.of(context).dividerColor),
                bottom:
                    BorderSide(width: 1, color: Theme.of(context).dividerColor),
              ),
            ),

            child: Container(
                padding: EdgeInsets.all(15),
                child: DropdownButtonFormField(
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.subtitle1,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    labelText: 'Switch Client',
                    labelStyle: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.bodyText2,
                        letterSpacing: 1.8,
                        fontWeight: FontWeight.w500),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1),
                    ),
                  ),
                  items: _clientcode.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  focusColor: Colors.white,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                )),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            alignment: Alignment.topLeft,
            child: Text(
              'Navigation'.toUpperCase(),
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.subtitle2,
                fontWeight: FontWeight.w300,
                letterSpacing: 2.5,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              primary: false,
              physics: AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: menuList == null ? 0 : menuList.length,
              itemBuilder: (BuildContext context, int index) {
                Map item = menuList[index];
                return ListTile(
                  horizontalTitleGap: 0,
                  title: Text(
                    '${item["title"]}',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.subtitle1,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  leading: Icon(
                    item["icon"],
                    color: Theme.of(context)
                        .colorScheme
                        .onSecondary
                        .withOpacity(0.6),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Theme.of(context)
                        .colorScheme
                        .onSecondary
                        .withOpacity(0.6),
                  ),
                  onTap: () {
                    clickEvent(item, context);
                  },
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        width: 1, color: Theme.of(context).dividerColor))),
            child: ListTile(
              title: Text(
                'Logout',
                style: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.subtitle1,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              trailing: Icon(
                Icons.logout_outlined,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
              onTap: () {
                confirmationAlertDialog(context,(){
                  //Yes
                  pushandpopR(context,Login());
                  /* Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => Login()),
                        (Route<dynamic> route) => false,
                  );*/
                },(){
                  //No
                  Navigator.pop(context);
                });
                // Navigator.pushReplacement<void, void>(context,
                //   MaterialPageRoute(
                //     builder: (BuildContext context) => Login()
                //   )
                // );
              },
            ),
          ),
        ],
      ),
    );
  }

  void clickEvent(Map<dynamic, dynamic> item, BuildContext context) {
    item["id"] == '001' && widget.selectedItem != "Dashboard"
        ? pushandpopR(context, Dashboard())
        : item["id"] == '002' && widget.selectedItem != "Portfolio"
            ? pushandpop(context, Portfolio())
            : item["id"] == '003' && widget.selectedItem != "Funds"
                ? pushandpop(context, Funds())
                : item["id"] == '004' && widget.selectedItem != "Report"
                    ? pushandpop(context, Report())
                    : item["id"] == '005' && widget.selectedItem != "Research"
                        ? pushandpop(context, Research())
                        : item["id"] == '007'
                            ? pushandpop(context, Profile())
                            : item["id"] == '009'
                                ? pushandpop(context, NoInternet())
                                : item["id"] == '010'
                                    ? pushandpop(context, ApiError())
                                    : null;
  }

  void pushandpop(BuildContext context, Widget widget) {
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) => widget),
    );
  }

  void pushandpopR(BuildContext context, Widget widget) {
    Navigator.pop(context);
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (BuildContext context) => widget),
      (Route<dynamic> route) => false,
    );
  }
}
