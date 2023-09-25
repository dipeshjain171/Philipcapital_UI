import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/constants.dart';
import 'package:phc/dashboard/dash_explore.dart';
import 'package:phc/funds/addfunds.dart';
import 'package:phc/notification.dart';
import 'package:phc/widgets/bottomnavigation.dart';
import 'package:phc/widgets/client_bottomsheet.dart';
import 'package:phc/widgets/menudrawer.dart';

import 'dash_accordioncard.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  bool isLightTheme = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          isLightTheme ? PhcGradientLightColor2 : PhcGradientDarkColor2,
      bottomNavigationBar: BottomNavigation("Dashboard"),
      drawer: MenuDrawer("Dashboard"),
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverAppBar(
                // excludeHeaderSemantics: true,
                // automaticallyImplyLeading : false,
                // backgroundColor: Theme.of(context).primaryColor,
                backgroundColor: isLightTheme
                    ? PhcGradientLightColor2
                    : PhcGradientDarkColor2,
                // backgroundColor: Colors.transparent,
                // floating: true,
                // pinned: false,
                // snap: false,
                // stretch: true,
                // onStretchTrigger: () {
                //   // Function callback for stretch
                //   return Future<void>.value();
                // },
                iconTheme: IconThemeData(color: Colors.white),
                expandedHeight: 170,
                titleSpacing: 10,
                title: Container(
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          'Dashboard',
                          style: GoogleFonts.roboto(
                              textStyle:
                                  Theme.of(context).appBarTheme.titleTextStyle,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                          width: 130,
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                context: context,
                                builder: (BuildContext context) {
                                  return ClientBottomSheet();
                                },
                              );
                            },
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Vaishali Pawar',
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.roboto(
                                        textStyle:
                                            Theme.of(context).textTheme.caption,
                                        letterSpacing: 1.2,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                ),
                                Icon(Icons.expand_more_outlined),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                toolbarHeight: 65,
                actions: <Widget>[
                  Container(
                    width: 42,
                    height: 42,
                    margin: EdgeInsets.symmetric(horizontal: 3, vertical: 10),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        'assets/images/addfund.svg',
                        height: 24,
                        width: 24,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => AddFunds()),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: 42,
                    height: 42,
                    margin: EdgeInsets.symmetric(horizontal: 3, vertical: 10),
                    child: IconButton(
                      icon: Icon(Icons.notifications_outlined,
                          color: Colors.white, size: 24),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  NotificationList()),
                        );
                      },
                    ),
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  // expandedTitleScale : 2.5,
                  // stretchModes: const <StretchMode>[
                  //   StretchMode.zoomBackground,
                  //   StretchMode.blurBackground,
                  //   StretchMode.fadeTitle,
                  // ],
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.1, 1.0],
                          colors: isLightTheme
                              ? [PhcGradientLightColor1, PhcGradientLightColor2]
                              : [PhcGradientDarkColor1, PhcGradientDarkColor2]),
                    ),
                    padding: EdgeInsets.only(top: 64),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            child: Column(
                          children: [
                            Text(
                              'Available Funds'.toUpperCase(),
                              style: GoogleFonts.roboto(
                                  textStyle:
                                      Theme.of(context).textTheme.subtitle2,
                                  fontWeight: FontWeight.w300,
                                  letterSpacing: 1.7,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '₹ 74,134',
                              style: GoogleFonts.roboto(
                                  textStyle:
                                      Theme.of(context).textTheme.headline2,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 1.2,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                      ],
                    ),
                  ),
                )),
          ];
        },
        body: ListView(
          // padding: EdgeInsets.all(15),
          children: [
            Container(
              decoration: BoxDecoration(
                color: isLightTheme
                    ? PhcGradientLightColor2
                    : PhcGradientDarkColor2,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                width: double.infinity,
                alignment: Alignment.center,
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    DashAccordionCard(),
                    SizedBox(height: 15),
                    DashExplore(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
