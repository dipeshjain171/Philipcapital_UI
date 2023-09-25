import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/dashboard/dashboard.dart';
import 'package:phc/profile/profile_nomineeitem.dart';


class ProfileNominee extends StatefulWidget {
  @override
  _ProfileNomineeState createState() => _ProfileNomineeState();
}

class _ProfileNomineeState extends State<ProfileNominee> with TickerProviderStateMixin{

 

final List<Map<String, dynamic>> _items = List.generate(3, (index) => {
  'id': index,
  'nomineeid': '$index',
});


  var _dropdownitems = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
  ];

var selectedValue = '3';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 2,
        titleSpacing: 10,
        title: Text('Nominee Details'),
        actions: <Widget>[
        ],
      ),
      body: ListView(
        children: [

          Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
              border: Border(
                top: BorderSide(width: 1, color: Theme.of(context).dividerColor),
                bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor),
              ),
            ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('No. of Nominee', textAlign: TextAlign.left,
                style: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.subtitle2,
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  letterSpacing: 1.2,
                ),
              ),
              SizedBox(height: 5),
              DropdownButtonFormField(
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.subtitle1,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
              ),
              value: selectedValue,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                hintText: 'select nominee count',
                
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
              items: _dropdownitems.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  
                  child: Text(value),
                );
              }).toList(), 
              onChanged: (String? newValue){
                setState(() {
                  selectedValue = newValue!;
                });
              },
            ),
            ],
          )
        ),
        

          

Padding(
  padding: EdgeInsets.all(10),
  child: ExpansionPanelList.radio(
  expandedHeaderPadding: EdgeInsets.zero,
  initialOpenPanelValue: 0,
  elevation: 3,
  animationDuration: const Duration(milliseconds: 600),
  children: _items
    .map(
      (item) => ExpansionPanelRadio(
        value: item['id'],
        canTapOnHeader: true,        
        backgroundColor: Theme.of(context).cardColor,
        headerBuilder: (_, isExpanded) => Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            item['nomineeid'] == '0' ?
            'Nominee One'
            :
            item['nomineeid'] == '1' ?
            'Nominee Two'
            :
            item['nomineeid'] == '2' ?
            'Nominee Three'
            :
            'test',
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.subtitle2,
              letterSpacing: 1.2,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: 
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 1, color: Theme.of(context).dividerColor)
            )
          ),
          child: 
          item['nomineeid'] == '0' ?
          ProfileNomineeItem()
          :
          item['nomineeid'] == '1' ?
          ProfileNomineeItem()
          :
          item['nomineeid'] == '2' ?
          ProfileNomineeItem()
          :
          Container(),
        )
        
      ),
    )
    .toList(),
  ),
),



          // ExpansionPanelList(
          //   // dividerColor: Colors.grey,
          //   // expansionCallback: (panelIndex, isExpanded) {
          //   //   _expanded = !_expanded;
          //   //   setState(() {
          //   //   });
          //   // },
          //   expansionCallback: (index, isExpanded) {
          //     setState(() {
          //       _items[index]['isExpanded'] = !isExpanded;
          //     });
          //   },
          //   children: 
          //   _items.map((item) => 
          //     ExpansionPanel(
          //         headerBuilder: (context, isExpanded) {
          //           return ListTile(
          //             title: Text(
          //             item['id' == '0'] ?
          //             'Nominee One' 
          //             :
          //             item['id' == '1'] ?
          //             'Nominee Two'
          //             :
          //             item['id' == '2'] ?
          //             'Nominee Three'
          //             :
          //             'ddd',
          //             style: TextStyle(color: Colors.black),),
          //           );
          //         },
          //         body:

          //         item['id' == '1'] ?
          //         Container(
          //           child: Text('ONE'),
          //         )
          //         :
          //         item['id' == '2'] ?
          //         Container(
          //           child: Text('TWO'),
          //         )
          //         :
          //         item['id' == '3'] ?
          //         Container(
          //           child: Text('THREE'),
          //         )
          //         :
          //         Container(),
                  
          //         // ListTile(
          //         //   title: Text('Description text',style: TextStyle(color: Colors.black)),
          //         // ),


          //       isExpanded: item['isExpanded'],
          //       canTapOnHeader: true,
          //     ),
          //   ).toList(),
          // ),

          
        ],
      )
    );
  }
}
