import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/constants.dart';
import 'package:phc/dashboard/dash_explore.dart';
import 'package:phc/report/report_advisory.dart';
import 'package:phc/report/report_mtf.dart';
import 'package:phc/report/report_mutualfunds.dart';
import 'package:phc/report/report_nbfc.dart';
import 'package:phc/report/report_pms.dart';
import 'package:phc/report/report_trading.dart';
import 'package:phc/widgets/bottomnavigation.dart';
import 'package:phc/widgets/menudrawer.dart';


class Report extends StatefulWidget {


  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> with TickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {   
    super.initState();

    _tabController = TabController(
      initialIndex: 0,
      length: 6,
      vsync: this,
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation("Report"),
      drawer: MenuDrawer("Report"),
      appBar: AppBar(
        elevation: 3,
        titleSpacing: 10,
        title: Text('Report'),
        actions: <Widget>[
          Container(
            width: 42, height: 42,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 3, vertical: 10),
            child: IconButton(
              alignment: Alignment.center,
              icon: SvgPicture.asset(
                'assets/images/addfund.svg',
                height: 22,
                width: 22,
                color: Theme.of(context).appBarTheme.iconTheme!.color,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            width: 42, height: 42,
            margin: EdgeInsets.symmetric(horizontal: 3, vertical: 10),
            child: IconButton(
              icon: Icon(Icons.notifications_outlined, size: 24),
              onPressed: () {},
            ),
          ),
        ],
        bottom: TabBar(
          indicatorColor: Theme.of(context).primaryColor,
          unselectedLabelColor: Theme.of(context).colorScheme.onSecondary.withOpacity(0.6),
          unselectedLabelStyle: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.subtitle2,
            letterSpacing: 1.2
          ),
          labelColor: Theme.of(context).primaryColor,
          labelStyle: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.subtitle2,
            letterSpacing: 1.2,
            fontWeight: FontWeight.bold
          ),
          controller: _tabController,
          isScrollable: true,
          onTap: (int value) {
            setState(() {
              _tabController.index = value;
            });
          },
          tabs: [
            Tab(text: 'Trading'),
            Tab(text: 'Mutual Funds'),
            Tab(text: 'Advisory'),
            Tab(text: 'PMS'),
            Tab(text: 'NBFC'),
            Tab(text: 'MTF'),
          ]
        ),

      ),
      body: TabBarView(
        physics: BouncingScrollPhysics(),
        controller: _tabController,
        children: [
        
          ReportTrading(),
          ReportMutualFunds(),
          ReportAdvisory(),
          ReportPms(),
          ReportNbfc(),
          ReportMtf(),
          
        ],
      ),
    );
  }
}
