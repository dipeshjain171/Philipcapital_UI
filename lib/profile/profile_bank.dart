import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/dashboard/dashboard.dart';


class ProfileBank extends StatefulWidget {
  @override
  _ProfileBankState createState() => _ProfileBankState();
}

class _ProfileBankState extends State<ProfileBank> with TickerProviderStateMixin{

  var _dropdownitems = [
    "ICICI Bank",
    "HDFC Bank",
    "Axis Bank",
    "SBI",
    "BOI",
    "CBI",
    "Abhyudaya Bank",
  ];

  var selectedValue = 'ICICI Bank';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 2,
        titleSpacing: 10,
        title: Text('Bank Details'),
        actions: <Widget>[
          
        ],
      ),
      body: ListView(
        children: [

          Container(
            padding: EdgeInsets.symmetric(horizontal : 15, vertical: 10),
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

                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Saved Bank Account',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle1,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      Text('below are the saved bank account details'.toLowerCase(),
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.caption,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
                ),

                Card(
                  elevation: 4,
                  shadowColor: Theme.of(context).shadowColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListTile(
                    onTap: (){},
                    horizontalTitleGap: 10,
                    title: Text('HDFC Bank',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.subtitle2,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                    ),
                    subtitle: Text('**** ***** 2345',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.caption,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.2,
                    ),
                    ),
                    leading: Image.asset(
                      'assets/images/hdfc.png',
                      width: 32, height: 32,
                      fit: BoxFit.contain,
                    ),
                    trailing: Container(
                      width: 42, height: 42,
                      child: IconButton(
                        icon: Icon(Icons.delete_outlined, size: 24, color: Colors.redAccent[700],),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),

                Card(
                  elevation: 4,
                  shadowColor: Theme.of(context).shadowColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListTile(
                    onTap: (){},
                    horizontalTitleGap: 10,
                    title: Text('ICICI Bank',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.subtitle2,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                    ),
                    subtitle: Text('**** ***** 2345',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.caption,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.2,
                    ),
                    ),
                    leading: Image.asset(
                      'assets/images/icici.png',
                      width: 32, height: 32,
                      fit: BoxFit.contain,
                    ),
                    trailing: Container(
                      width: 42, height: 42,
                      child: IconButton(
                        icon: Icon(Icons.delete_outlined, size: 24, color: Colors.redAccent[700],),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Add New Bank Account',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle1,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      Text('Fill the details to saved bank account'.toLowerCase(),
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.caption,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bank Name', textAlign: TextAlign.left,
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
                    Text('Account Number', textAlign: TextAlign.left,
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
                        hintText: 'enter account number',
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
                    Text('IFSC Code', textAlign: TextAlign.left,
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
                        hintText: 'enter ifsc code',
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
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).colorScheme.secondary,
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                          alignment: Alignment.center,
                        ),
                        child: Text('Save Bank Details',
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
          ),

        ],
      )
    );
  }
}
