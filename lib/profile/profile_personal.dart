import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/dashboard/dashboard.dart';


class ProfilePersonal extends StatefulWidget {
  @override
  _ProfilePersonalState createState() => _ProfilePersonalState();
}

class _ProfilePersonalState extends State<ProfilePersonal> with TickerProviderStateMixin{

  var _dropdownitems = [
    "Option 1",
    "Option 2",
    "Option 3",
    "Option 4",
    "Option 5",
    "Option 6",
    "Option 7",
  ];

  var selectedValue = 'Option 5';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(4),
            topRight: Radius.circular(4),
          ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor.withOpacity(0.35),
              blurRadius: 3,
              spreadRadius: 0,
              offset: Offset(
                0,
                -1,
              ),
            )
          ]
        ),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Expanded(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).colorScheme.secondary,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              alignment: Alignment.center,
            ),
            child: Text('Save',
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.button,
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 2,
        titleSpacing: 10,
        title: Text('Personal Details'),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              primary: Theme.of(context).colorScheme.primary,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  'Edit'.toUpperCase(),
                  style: GoogleFonts.robotoCondensed(
                    textStyle: Theme.of(context).textTheme.button,
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
              
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mobile Number', textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.subtitle2,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.subtitle1,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                      initialValue: '9876543210',
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintText: 'enter mobile',
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
                    ),
                  ],
                )
              ),

              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email Address', textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.subtitle2,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.subtitle1,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintText: 'enter email',
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
                    ),
                  ],
                )
              ),

              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Date of Birth', textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.subtitle2,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.subtitle1,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintText: 'dd/mm/yyyy',
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

              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Occupation', textAlign: TextAlign.left,
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
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      hintText: 'select an option',
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

              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Communication Address', textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.subtitle2,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      maxLines: 5,
                      keyboardType: TextInputType.multiline,
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.subtitle1,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintText: 'enter address',
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
                    ),
                  ],
                )
              ),

              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Permanent Address', textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.subtitle2,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        letterSpacing: 1.2,
                      ),
                    ),
                    SizedBox(height: 5),
                    TextField(
                      maxLines: 5,
                      keyboardType: TextInputType.multiline,
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.subtitle1,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintText: 'enter address',
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
                    ),
                  ],
                )
              ),

              

              


              ],
            ),
          ),
          
        ],
      )
    );
  }
}
