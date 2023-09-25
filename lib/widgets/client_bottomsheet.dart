import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ClientBottomSheet extends StatefulWidget {
  @override
  _ClientBottomSheetState createState() => _ClientBottomSheetState();
}


class _ClientBottomSheetState extends State<ClientBottomSheet> with TickerProviderStateMixin{



  List clientList = [
    {
      "id": "001",
      "clientname" : "Lorem One",
    },
    {
      "id": "002",
      "clientname" : "Lorem Two",
    },
    {
      "id": "002",
      "clientname" : "Lorem Three",
    },
    {
      "id": "004",
      "clientname" : "Lorem Four",
    },
    {
      "id": "001",
      "clientname" : "Lorem One",
    },
    {
      "id": "002",
      "clientname" : "Lorem Two",
    },
    {
      "id": "002",
      "clientname" : "Lorem Three",
    },
    {
      "id": "004",
      "clientname" : "Lorem Four",
    },
  ];

  bool _value = false;
  bool _valu = false;

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
                  child: Text('Select Client',
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
            child: Container(
              height: 250,
              alignment: Alignment.center,
              child: ListView.separated(
                primary: false,
                physics: AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: clientList == null ? 0 : clientList.length,
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
                  Map item = clientList[index];
                  // return CheckboxListTile(
                  //   selected: _value,
                  //   value: _value,
                  //   onChanged: (bool value) {
                  //     setState(() {
                  //       _value = value;
                  //     });
                  //   },
                  //   title: Text('${item["clientname"]}',
                  //     style: GoogleFonts.roboto(
                  //       textStyle: Theme.of(context).textTheme.subtitle2,
                  //       fontWeight: FontWeight.w500,
                  //       letterSpacing: 1.5,
                  //     ),
                  //   ),
                  // );
                  return CheckboxListTile(
                    title: Text('${item["clientname"]}',
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.subtitle2,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.5,
                      ),
                    ),
                    activeColor: Theme.of(context).colorScheme.primary,
                    checkColor: Colors.white,
                    selected: _value,
                    dense: true,
                    value: _value,
                    onChanged: (value) => {
                      setState(() {
                        _value = !_value;
                      }),
                    },
                  );
                },
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
              children: [                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){},
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
