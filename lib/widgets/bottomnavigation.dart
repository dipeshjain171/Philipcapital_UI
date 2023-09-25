import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/dashboard/dashboard.dart';
import 'package:phc/funds/funds.dart';
import 'package:phc/portfolio/portfolio.dart';
import 'package:phc/report/report.dart';

class BottomNavigation extends StatefulWidget {
  String selectedItem = "Dashboard";

  BottomNavigation(this.selectedItem) {}

  @override
  _BottomNavigationState createState() => new _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _selectedIndex == 0 && widget.selectedItem != "Dashboard"
          ? Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (BuildContext context) => Dashboard()),
            (Route<dynamic> route) => false,
            )
          : _selectedIndex == 1 && widget.selectedItem != "Portfolio"
              ? Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Portfolio()),
                )
              : _selectedIndex == 2 && widget.selectedItem != "Funds"
                  ? Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Funds()),
                    )
                  : _selectedIndex == 3 && widget.selectedItem != "Report"
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Report()),
                        )
                      : null;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.selectedItem == "Dashboard") {
      _selectedIndex = 0;
    } else if (widget.selectedItem == "Portfolio") {
      _selectedIndex = 1;
    } else if (widget.selectedItem == "Funds") {
      _selectedIndex = 2;
    } else if (widget.selectedItem == "Report") {
      _selectedIndex = 3;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(width: 1, color: Colors.grey.withOpacity(0.3))),
          color: Theme.of(context).colorScheme.surface),
      child: BottomNavigationBar(
        iconSize: 26,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
                margin: EdgeInsets.only(bottom: 3),
                child: Icon(Icons.home_outlined)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 3),
              child: Icon(Icons.business_center_outlined),
            ),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 3),
              child: Icon(Icons.payments_outlined),
            ),
            label: 'Fund',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 3),
              child: Icon(Icons.insert_chart_outlined_outlined),
            ),
            label: 'Report',
          ),
        ],
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: GoogleFonts.roboto(
          textStyle: Theme.of(context).textTheme.subtitle2,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.2,
          color: Colors.grey,
        ),
        selectedItemColor: Theme.of(context).colorScheme.primary,
        selectedLabelStyle: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.subtitle2,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
            color: Theme.of(context).colorScheme.primary),
        elevation: 1,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
