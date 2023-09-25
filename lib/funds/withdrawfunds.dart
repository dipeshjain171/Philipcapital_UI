import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/widgets/bottomnavigation.dart';

class WithdrawFunds extends StatefulWidget {
  @override
  _WithdrawFundsState createState() => new _WithdrawFundsState();
}

class _WithdrawFundsState extends State<WithdrawFunds> {



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
          child: Text('Withdraw Funds',
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
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).colorScheme.secondary,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              alignment: Alignment.center,
            ),
            child: Text('Withdraw Funds',
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
        title: Text('Withdraw Funds'),
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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Total Balance',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.caption,
                      letterSpacing: 1.2,
                      fontSize: 14
                    ),
                    ),
                    Text('₹ 3,000.45',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.subtitle1,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 15
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Withdrawable Balance',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.caption,
                      letterSpacing: 1.2,
                      fontSize: 14
                    ),
                    ),
                    Text('₹ 3,000.45',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.subtitle1,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 15
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Unsettled Balance',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.caption,
                      letterSpacing: 1.2,
                      fontSize: 14
                    ),
                    ),
                    Text('₹ 0.00',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.subtitle1,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 15
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),

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
                            child: Text('Enter Amount to Withdraw',
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
              children: [

                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Credit to Account',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.subtitle1,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                      Text('select a registered bank account to amount credited'.toLowerCase(),
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
                      Icon(Icons.info_outlined, color: Colors.grey,),
                      SizedBox(width: 5),
                      Text('To be credited by 9:30am, 08Aug, 2022',
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.bodyText2,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        letterSpacing: 1.2,
                      ),
                      ),
                    ],
                  )
                )

              ],
            ),
          ),
            
        

        ],
      ),
    );
  }
}