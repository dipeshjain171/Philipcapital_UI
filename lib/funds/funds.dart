import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/funds/funds_fundtransfer.dart';
import 'package:phc/funds/funds_limit.dart';
import 'package:phc/funds/funds_marginagainstholding.dart';
import 'package:phc/widgets/bottomnavigation.dart';
import 'package:phc/widgets/menudrawer.dart';


class Funds extends StatefulWidget {
  @override
  _FundsState createState() => _FundsState();
}

class _FundsState extends State<Funds> with TickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {   
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation("Funds"),
      drawer: MenuDrawer("Funds"),
      appBar: AppBar(
        elevation: 3,
        titleSpacing: 10,
        title: Text('Funds'),
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
            Tab(text: 'Fund Transfer'),
            Tab(text: 'Margin Against Holding'),
            Tab(text: 'Limit'),
          ]
        ),

      ),
      body: TabBarView(
        physics: BouncingScrollPhysics(),
        controller: _tabController,
        children: [
          
          FundsFundTransfer(),
          FundsMarginAgainstHolding(),
          FundsLimit(),

        ],
      ),
      
    );
  }
}
