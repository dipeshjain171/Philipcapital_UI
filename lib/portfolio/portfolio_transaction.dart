import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/widgets/bottomnavigation.dart';

class PortfolioTransaction extends StatefulWidget {
  @override
  _PortfolioTransactionState createState() => new _PortfolioTransactionState();
}

class _PortfolioTransactionState extends State<PortfolioTransaction> {


List portfoliotransactionList = [
  {
    "id": "001",
    "transactiondate" : "22/07/2022",
    "remark" : "lorem ipsum",
    "buyquantity" : "14",
    "buyrate" : "1,152.88",
    "sellquantity" : "0",
    "sellrate" : "0.00",
  },
  {
    "id": "002",
    "transactiondate" : "22/07/2022",
    "remark" : "lorem ipsum",
    "buyquantity" : "14",
    "buyrate" : "1,152.88",
    "sellquantity" : "0",
    "sellrate" : "0.00",
  },
  {
    "id": "003",
    "transactiondate" : "22/07/2022",
    "remark" : "lorem ipsum",
    "buyquantity" : "14",
    "buyrate" : "1,152.88",
    "sellquantity" : "0",
    "sellrate" : "0.00",
  },
  {
    "id": "004",
    "transactiondate" : "22/07/2022",
    "remark" : "lorem ipsum",
    "buyquantity" : "14",
    "buyrate" : "1,152.88",
    "sellquantity" : "0",
    "sellrate" : "0.00",
  },
  {
    "id": "005",
    "transactiondate" : "22/07/2022",
    "remark" : "lorem ipsum",
    "buyquantity" : "14",
    "buyrate" : "1,152.88",
    "sellquantity" : "0",
    "sellrate" : "0.00",
  },
  {
    "id": "006",
    "transactiondate" : "22/07/2022",
    "remark" : "lorem ipsum",
    "buyquantity" : "14",
    "buyrate" : "1,152.88",
    "sellquantity" : "0",
    "sellrate" : "0.00",
  },
  {
    "id": "007",
    "transactiondate" : "22/07/2022",
    "remark" : "lorem ipsum",
    "buyquantity" : "14",
    "buyrate" : "1,152.88",
    "sellquantity" : "0",
    "sellrate" : "0.00",
  },
  {
    "id": "008",
    "transactiondate" : "22/07/2022",
    "remark" : "lorem ipsum",
    "buyquantity" : "14",
    "buyrate" : "1,152.88",
    "sellquantity" : "0",
    "sellrate" : "0.00",
  },
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 3,
        titleSpacing: 10,
        title: Text('Portfolio Transaction'),
        actions: <Widget>[
          Container(
            width: 42, height: 42,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 3, vertical: 10),
            child: IconButton(
              alignment: Alignment.center,
              icon: SvgPicture.asset(
                'assets/images/addfund.svg',
                height: 22,
                width: 22,
                color: Theme.of(context).appBarTheme.iconTheme!.color,
              ),
              onPressed: () {},
            ),
          ),
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
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              border: Border(
                top: BorderSide(width: 1, color: Theme.of(context).dividerColor),
                bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor),
              ),
            ),
            
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Theme.of(context).colorScheme.surface,
                    child: TextField(
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.subtitle2,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                      autofocus: false,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintText: 'Search',
                        hintStyle: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.bodyText2,
                          letterSpacing: 1.8,
                          fontWeight: FontWeight.w300
                        ),
                        prefixIcon: Icon(Icons.search_outlined),
                        
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(4),
                            bottomLeft: Radius.circular(4),
                          ),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(4),
                            bottomLeft: Radius.circular(4),
                          ),
                          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.only(
                            topRight: Radius.circular(4),
                            bottomRight: Radius.circular(4),
                            topLeft: Radius.circular(0),
                            bottomLeft: Radius.circular(0),
                          ),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.tune_outlined),
                    onPressed: (){}, 
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: IconButton(                  
                    icon: Icon(Icons.shortcut_outlined),
                    onPressed: (){}, 
                  ),
                ),
              ],
            ),
          ),

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
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Symbol',
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.caption,
                            letterSpacing: 1.5
                          ),
                          ),
                          SizedBox(height: 5),
                          Text('KOTAKBANK',
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.subtitle1,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 15
                          ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('ISIN',
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.caption,
                            letterSpacing: 1.5
                          ),
                          ),
                          SizedBox(height: 5),
                          Text('INE192R01011',
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.subtitle1,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Scrip Code',
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.caption,
                            letterSpacing: 1.5
                          ),
                          ),
                          SizedBox(height: 5),
                          Text('540376',
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.subtitle1,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 15
                          ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
            
          Container(
            padding: EdgeInsets.symmetric(horizontal : 15, vertical: 10),
            decoration: BoxDecoration(
              color: Theme.of(context).secondaryHeaderColor,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text('Transaction Date', textAlign: TextAlign.left,
                      style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 13
                        ),
                      ),
                    ),
                    
                    Expanded(
                      child: Text('Buy Qty | Buy Rate', textAlign: TextAlign.right,
                      style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 13
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: Text('Remark', textAlign: TextAlign.left,
                      style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 13
                        ),
                      ),
                    ),
                    
                    Expanded(
                      child: Text('Sell Qty | Sell Rate', textAlign: TextAlign.right,
                      style: GoogleFonts.robotoCondensed(
                          textStyle: Theme.of(context).textTheme.subtitle2,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontSize: 13
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          ListView.separated(
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: portfoliotransactionList == null ? 0 : portfoliotransactionList.length,
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Theme.of(context).dividerColor),
                  )
                ),
              );
            },
            itemBuilder: (BuildContext context, int index) {
              Map item = portfoliotransactionList[index];
              return Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text('${item["transactiondate"]}', textAlign: TextAlign.left,
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.subtitle2,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                          ),
                        ),
                        Expanded(
                          child: RichText(
                          textAlign: TextAlign.right,
                          text: TextSpan(
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.subtitle2,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.2,
                            ),
                            children: [
                              TextSpan(
                                text: '${item["buyquantity"]}',
                              ),
                              TextSpan(
                                text: ' | '
                              ),
                              TextSpan(
                                text: '₹ ${item["buyrate"]}',
                              ),
                            ]
                          )
                        ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(
                          child: Text('${item["remark"]}', textAlign: TextAlign.left,
                          style: GoogleFonts.roboto(
                            textStyle: Theme.of(context).textTheme.subtitle2,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                          ),
                          ),
                        ),
                        Expanded(
                          child: RichText(
                          textAlign: TextAlign.right,
                          text: TextSpan(
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.subtitle2,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.2,
                            ),
                            children: [
                              TextSpan(
                                text: '${item["sellquantity"]}',
                              ),
                              TextSpan(
                                text: ' | '
                              ),
                              TextSpan(
                                text: '₹ ${item["sellrate"]}',
                              ),
                            ]
                          )
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }
          ),
            


        ],
      ),
    );
  }
}