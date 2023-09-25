import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileNomineeItem extends StatefulWidget {
  @override
  _ProfileNomineeItemState createState() => new _ProfileNomineeItemState();
}

class _ProfileNomineeItemState extends State<ProfileNomineeItem> {
 
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

    return Container(
      child: Column(
        children: [
        
        Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nominee Name', textAlign: TextAlign.left,
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
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  hintText: 'placeholder',
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
              Text('Relation', textAlign: TextAlign.left,
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
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  hintText: 'placeholder',
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
              TextFormField(
                style: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.subtitle1,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  hintText: 'placeholder',
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
              Text('Nominee Share', textAlign: TextAlign.left,
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
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  hintText: 'placeholder',
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
              Text('Address', textAlign: TextAlign.left,
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
              Text('Identity Proof', textAlign: TextAlign.left,
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
              Text('Upload Identity Proof', textAlign: TextAlign.left,
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
                  hintText: 'click to upload',
                  hintStyle: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.bodyText2,
                    letterSpacing: 1.8,
                    fontWeight: FontWeight.w300
                  ),

                  suffixIcon: Icon(Icons.upload_file_outlined),
                  
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

        Row(
          children: [
            Expanded(
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
          ],
        )
        ],
      ),
    );
  }
}