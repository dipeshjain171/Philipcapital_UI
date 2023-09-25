import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class AnalyserBottomSheet extends StatefulWidget {
  @override
  _AnalyserBottomSheetState createState() => _AnalyserBottomSheetState();
}


class _AnalyserBottomSheetState extends State<AnalyserBottomSheet> with TickerProviderStateMixin{


Map<String, double> dataMap = {
  "Oil": 3600,
  "Power": 1300.5,
  "Finance": 1400.6,
  "Retail": 700.9,
  "Others": 1200.4,
};

final colorList = <Color>[
  const Color(0xffDEBA0B),
  const Color(0xff769CFF),
  const Color(0xff00AABB),
  const Color(0xff9A2AE3),
  const Color(0xffE32A64),
];


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
                  child: Text('Analyser',
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
              alignment: Alignment.center,
                height: 240,
                child: PieChart(
                dataMap: dataMap,
                animationDuration: Duration(milliseconds: 800),
                chartLegendSpacing: 15,
                initialAngleInDegree: 0,
                colorList: colorList,
                chartType: ChartType.disc,
                // chartRadius: MediaQuery.of(context).size.width / 1.2,
                legendOptions: LegendOptions(
                  showLegendsInRow: true,
                  legendPosition: LegendPosition.bottom,
                  showLegends: true,
                  legendShape: BoxShape.circle,
                  legendTextStyle: GoogleFonts.robotoCondensed(
                    textStyle: Theme.of(context).textTheme.bodyText2,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold
                    // color: Colors.white
                  ),
                ),
                chartValuesOptions: ChartValuesOptions(
                  chartValueBackgroundColor: Theme.of(context).colorScheme.background,
                  showChartValueBackground: true,
                  showChartValues: true,
                  chartValueStyle: GoogleFonts.robotoCondensed(
                    textStyle: Theme.of(context).textTheme.bodyText2,
                    fontWeight: FontWeight.bold
                  ),
                  showChartValuesInPercentage: true,
                  showChartValuesOutside: false,
                  decimalPlaces: 1,
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
                    onPressed: (){},
                    style: OutlinedButton.styleFrom(
                      primary: Theme.of(context).colorScheme.secondary,                       
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                      alignment: Alignment.center,
                      side: BorderSide(width: 1, color: Theme.of(context).colorScheme.secondary),
                    ),
                    child: Text('Capwise',
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.button,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                  onPressed: (){}, 
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.secondary, 
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                    alignment: Alignment.center,
                  ),
                  child: Text('Sectorwise',
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
