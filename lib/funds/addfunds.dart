import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/widgets/bottomnavigation.dart';

class AddFunds extends StatefulWidget {
  @override
  _AddFundsState createState() => new _AddFundsState();
}

class _AddFundsState extends State<AddFunds> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: ElevatedButton(
          onPressed: (){
          },
          style: ElevatedButton.styleFrom(
            primary: Theme.of(context).colorScheme.secondary,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
            alignment: Alignment.center,
          ),
          child: Text('Add Funds',
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.button,
            ),
          ),
        ),
      ),
      /*bottomNavigationBar: Container(
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
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(
                    builder: (BuildContext context) => AddFunds()
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).colorScheme.secondary,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              alignment: Alignment.center,
            ),
            child: Text('Add Funds',
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.button,
              ),
            ),
          ),
        ),
      ),*/
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 3,
        titleSpacing: 10,
        title: Text('Add Funds'),
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
      ),
      body: ListView(
        children: [

          Padding(
            padding: EdgeInsets.all(10),
            child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                    child: Column(
                    children: [

                      Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Text('Enter Amount',
                              style: GoogleFonts.roboto(
                                textStyle: Theme.of(context).textTheme.subtitle2,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                          TextField(
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.subtitle1,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                              floatingLabelBehavior: FloatingLabelBehavior.never,
                              hintText: 'enter amount',
                              hintStyle: GoogleFonts.roboto(
                                textStyle: Theme.of(context).textTheme.bodyText2,
                                letterSpacing: 1.8,
                                fontWeight: FontWeight.w300
                              ),

                              prefixIcon: Icon(Icons.currency_rupee),
                              
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
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: Theme.of(context).colorScheme.primary,
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                              ),
                              onPressed: () {},
                              child: Text(
                                '+ ₹100',
                                style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.button,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: Theme.of(context).colorScheme.primary,
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                              ),
                              onPressed: () {},
                              child: Text(
                                '+ ₹500',
                                style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.button,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: Theme.of(context).colorScheme.primary,
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                              ),
                              onPressed: () {},
                              child: Text(
                                '+ ₹1000',
                                style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.button,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            TextButton(
                              style: TextButton.styleFrom(
                                primary: Theme.of(context).colorScheme.primary,
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                              ),
                              onPressed: () {},
                              child: Text(
                                '+ ₹10,000',
                                style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.button,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),

                          ],
                        ),
                      )
                    
                    ],
                  ),
                )
              ),
          ),


          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pay From',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle1,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      Text('select a registered bank account'.toLowerCase(),
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
                    horizontalTitleGap: 0,
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
                    trailing: Icon(Icons.expand_more_outlined)
                  ),
                ),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.background,
                    border: Border.all(width: 1, color: Theme.of(context).dividerColor),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 32, height: 32, alignment: Alignment.center,
                        child: Icon(Icons.info_outlined, color: Colors.grey,),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text('Payment must be done with registered bank account',
                        softWrap: true,
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.bodyText2,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          letterSpacing: 1.2,
                        ),
                        ),
                      )
                    ],
                  )
                )

              ],
            ),
          ),




          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Payment Method',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle1,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      Text('select a mode of fund transfer'.toLowerCase(),
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
                    title: Text('UPI Method',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.subtitle2,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                    ),
                    subtitle: Text('GPay, Phonepe, Paytm, Whatsapp, Truecaller',
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.caption,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.2,
                    ),
                    ),
                    leading: Container(
                      width: 42, height: 42, alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/upi.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    trailing: Icon(Icons.chevron_right_outlined)
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
                    title: Text('Netbanking',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.subtitle2,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                    ),
                    leading: Container(
                      width: 42, height: 42, alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/netbanking.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    trailing: Icon(Icons.chevron_right_outlined)
                  ),
                ),

              ],
            ),
          )
         
        ],
      ),
    );
  }
}