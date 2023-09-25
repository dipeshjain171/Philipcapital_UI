import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/widgets/menudrawer.dart';

class Research extends StatefulWidget {
  @override
  _ResearchState createState() => _ResearchState();
}

class _ResearchState extends State<Research> with TickerProviderStateMixin {
  var _dropdownitems = [
    "Lorem One",
    "Lorem Two",
    "Lorem Three",
    "Lorem Four",
    "Equity",
    "Lorem Five",
    "Lorem Six"
  ];

  var selectedValue = 'Equity';

  List researchList = [
    {
      "id": "001",
      "title": "Top Picks July’2022",
      "desc":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
      "date": "06Jul 2022",
      "reporttype": "Top Picks",
    },
    {
      "id": "002",
      "title": "Marico Ltd",
      "desc":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
      "date": "06Jul 2022",
      "reporttype": "Top Picks",
    },
    {
      "id": "003",
      "title": "Corporate Action Report June’22",
      "desc":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
      "date": "06Jul 2022",
      "reporttype": "Top Picks",
    },
    {
      "id": "004",
      "title": "Top Picks August’2022",
      "desc":
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
      "date": "06Jul 2022",
      "reporttype": "Top Picks",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MenuDrawer("Research"),
        appBar: AppBar(
          elevation: 3,
          titleSpacing: 10,
          title: Text('Research'),
          actions: <Widget>[
            Container(
              width: 42,
              height: 42,
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
              width: 42,
              height: 42,
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
                  top: BorderSide(
                      width: 1, color: Theme.of(context).dividerColor),
                  bottom: BorderSide(
                      width: 1, color: Theme.of(context).dividerColor),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Theme.of(context).colorScheme.surface,
                      child: DropdownButtonFormField(
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
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ListView.separated(
                  primary: false,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: researchList == null ? 0 : researchList.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 10);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    Map item = researchList[index];
                    return InkWell(
                      child: Card(
                        elevation: 5,
                        shadowColor:
                            Theme.of(context).shadowColor.withOpacity(0.5),
                        color: Theme.of(context).colorScheme.surface,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 1, color: Theme.of(context).dividerColor),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      '${item["title"]}',
                                      style: GoogleFonts.roboto(
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .subtitle1,
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          letterSpacing: 1.2,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      '${item["desc"]}',
                                      style: GoogleFonts.roboto(
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1.2,
                                          fontSize: 14),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 5),
                                    child: RichText(
                                        textAlign: TextAlign.left,
                                        text: TextSpan(
                                            style: GoogleFonts.roboto(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .caption,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1.2,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: '${item["date"]}',
                                              ),
                                              TextSpan(text: ' | '),
                                              TextSpan(
                                                text: 'Report Type : ',
                                              ),
                                              TextSpan(
                                                text: '${item["reporttype"]}',
                                              ),
                                            ])),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                      width: 1,
                                      color: Theme.of(context).dividerColor),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ElevatedButton.icon(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 15),
                                      alignment: Alignment.center,
                                    ),
                                    icon: Icon(
                                      Icons.picture_as_pdf_outlined,
                                      color: Colors.white,
                                    ),
                                    label: Text(
                                      'Download PDF',
                                      style: GoogleFonts.roboto(
                                          textStyle: Theme.of(context)
                                              .textTheme
                                              .button,
                                          fontSize: 14),
                                    ),
                                  ),
                                  TextButton(
                                      style: TextButton.styleFrom(
                                        primary: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        padding:
                                            EdgeInsets.fromLTRB(0, 10, 0, 10),
                                      ),
                                      onPressed: () {},
                                      child: Row(
                                        children: [
                                          Text(
                                            'Read more',
                                            style: GoogleFonts.robotoCondensed(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .button,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                          SizedBox(width: 3),
                                          Icon(
                                            Icons.east_outlined,
                                            size: 18,
                                          )
                                        ],
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
