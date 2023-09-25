import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/report/filter_bottomsheet.dart';
import 'package:phc/report/report_profitlosslist.dart';
import 'package:phc/report/report_tradinglist.dart';

class ReportTrading extends StatefulWidget {
  @override
  _ReportTradingState createState() => new _ReportTradingState();
}

class _ReportTradingState extends State<ReportTrading> {
  var _dropdownitems = [
    "Holding",
    "Ledger",
    "Profit & Loss",
    "Trades",
    "Contract",
    "AGTS",
    "STT"
  ];

  var selectedValue = 'Ledger';

  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.surface,
                  child: DropdownButtonFormField(
                    value: selectedValue,
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.subtitle2,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                            width: 1),
                      ),
                    ),
                    items: _dropdownitems.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(4)),
                child: IconButton(
                  icon: Icon(Icons.tune_outlined),
                  onPressed: () {
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
                        return FilterBottomSheet();
                      },
                    );
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
                    borderRadius: BorderRadius.circular(4)),
                child: PopupMenuButton<String>(
                  icon: Icon(Icons.shortcut_outlined),
                  // onSelected: choiceAction,
                  itemBuilder: (BuildContext context) {
                    return Constants.choices.map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(choice),
                      );
                    }).toList();
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
            border: Border(
              top: BorderSide(width: 1, color: Theme.of(context).dividerColor),
              bottom:
                  BorderSide(width: 1, color: Theme.of(context).dividerColor),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Total Balance',
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.subtitle2,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              Container(
                child: Text(
                  '₹ 6,312 Cr',
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.subtitle2,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ],
          ),
        ),
        selectedValue == "Profit & Loss"
            ? ReportProfitLossList()
            : ReportTradingList(),
      ],
    );
  }
}

class Constants {
  static const String FirstItem = 'PDF';
  static const String SecondItem = 'Excel';
  static const String ThirdItem = 'Email';
  static const List<String> choices = <String>[
    FirstItem,
    SecondItem,
    ThirdItem,
  ];
}

// void choiceAction(String choice) {
//   if (choice == Constants.FirstItem) {
//     print('I First Item');
//   } else if (choice == Constants.SecondItem) {
//     print('I Second Item');
//   } else if (choice == Constants.ThirdItem) {
//     print('I Third Item');
//   }
// }
