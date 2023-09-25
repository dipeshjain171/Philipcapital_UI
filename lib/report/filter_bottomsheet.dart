import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';


class FilterBottomSheet extends StatefulWidget {
  @override
  _FilterBottomSheetState createState() => _FilterBottomSheetState();
}


class _FilterBottomSheetState extends State<FilterBottomSheet> with TickerProviderStateMixin{

  var _financialyear = [
    "2019-2020",
    "2020-2021",
    "2021-2022",
    "2022-2023",
  ];

  var selectedFinancialValue = '2021-2022';

  var _segment = [
    "ABC",
    "DEF",
    "GHI",
    "JKL",
    "MNO",
  ];

  var selectedSegmentValue = 'DEF';


@override
Widget build(BuildContext context) {
  return Container(
    // padding: EdgeInsets.fromLTRB(15,35,15,15),
    // constraints: BoxConstraints(
    //   maxHeight: 400,
    // ),
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.surface,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
    ),

    // height: MediaQuery.of(context).size.height / 3,
    // height: 250,
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15)
            ),
            color: Theme.of(context).colorScheme.background,
            
          ),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: Text('Filter',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.subtitle1,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close)
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [                  
                  
                    Container(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('Date Range',
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.bodyText2,
                              letterSpacing: 1.8,
                              fontWeight: FontWeight.w600
                            ),
                            ),
                          ),
                          TextField(
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.subtitle1,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2,
                            ),
                            autofocus: false,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              hintText: 'Date Range',
                              hintStyle: GoogleFonts.roboto(
                                textStyle: Theme.of(context).textTheme.bodyText2,
                                letterSpacing: 1.8,
                                fontWeight: FontWeight.w300
                              ),

                              suffixIcon: Icon(Icons.calendar_month_outlined),
                              
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1),
                              ),
                            ),
                          ),
                        ],
                      )
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('Financial Year',
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.bodyText2,
                              letterSpacing: 1.8,
                              fontWeight: FontWeight.w600
                            ),
                            ),
                          ),
                          DropdownButtonFormField(
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.subtitle1,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              hintText: 'Financial Year',
                              hintStyle: GoogleFonts.roboto(
                                textStyle: Theme.of(context).textTheme.bodyText2,
                                letterSpacing: 1.8,
                                fontWeight: FontWeight.w300
                              ),
                              
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1),
                              ),
                            ),
                            items: _financialyear.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(), 
                            focusColor: Colors.white,
                            onChanged: (String? newValue){
                              setState(() {
                                selectedFinancialValue = newValue!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('Segment',
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.bodyText2,
                              letterSpacing: 1.8,
                              fontWeight: FontWeight.w600
                            ),
                            ),
                          ),
                          DropdownButtonFormField(
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.subtitle1,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              hintText: 'Segment',
                              hintStyle: GoogleFonts.roboto(
                                textStyle: Theme.of(context).textTheme.bodyText2,
                                letterSpacing: 1.8,
                                fontWeight: FontWeight.w300
                              ),
                              
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1),
                              ),
                            ),
                            items: _segment.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(), 
                            focusColor: Colors.white,
                            onChanged: (String? newValue){
                              setState(() {
                                selectedSegmentValue = newValue!;
                              });
                            },
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 1, color: Theme.of(context).dividerColor),
              ),
            ),
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    style: OutlinedButton.styleFrom(
                      primary: Theme.of(context).colorScheme.onSecondary,                       
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                      alignment: Alignment.center,
                      side: BorderSide(width: 1, color: Theme.of(context).colorScheme.onSecondary ),
                    ),
                    child: Text('Cancel',
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.button,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                  onPressed: (){
                  }, 
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.secondary, 
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                    alignment: Alignment.center,
                  ),
                  child: Text('Apply',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
                ),
              ],
            ),
          ),
      ],
    ),
    

    );
  }

}
