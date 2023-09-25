import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/theme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileChangeTheme extends StatefulWidget {
  @override
  _ProfileChangeThemeState createState() => _ProfileChangeThemeState();
}

class _ProfileChangeThemeState extends State<ProfileChangeTheme>
    with TickerProviderStateMixin {
  var _darkTheme = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /*WidgetsBinding.instance
        .addPostFrameCallback((_) {
      final themeNotifier = Provider.of<ThemeNotifier>(context);
      _darkTheme = themeNotifier.isDarkTheme();
      setState(() {

      });
    });*/
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Container(
      constraints: BoxConstraints(
        maxHeight: 300,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: Theme.of(context).colorScheme.background,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'App Theme',
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.subtitle1,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close))
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 25),
                      child: Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  _darkTheme = true;
                                });
                              },
                              style: OutlinedButton.styleFrom(
                                primary:
                                    Theme.of(context).colorScheme.onSecondary,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 17),
                                alignment: Alignment.center,
                                side: BorderSide(
                                    width: 1,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary),
                              ),
                              child: Text(
                                'Dark',
                                style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.button,
                                  color:
                                      Theme.of(context).colorScheme.onSecondary,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _darkTheme = false;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                primary:
                                    Theme.of(context).colorScheme.onSecondary,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 17),
                                alignment: Alignment.center,
                              ),
                              child: Text(
                                'Light',
                                style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context).textTheme.button,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'NOTE : '.toUpperCase(),
                          style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.caption,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: Text(
                            'by clicking the change mode button it will change the overall app display mode.',
                            style: GoogleFonts.roboto(
                                textStyle: Theme.of(context).textTheme.caption,
                                letterSpacing: 1.2,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              border: Border(
                top:
                    BorderSide(width: 1, color: Theme.of(context).dividerColor),
              ),
            ),
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      onThemeChanged(_darkTheme, themeNotifier);
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).colorScheme.secondary,
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                      alignment: Alignment.center,
                    ),
                    child: Text(
                      'Change Theme',
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

  void onThemeChanged(bool value, ThemeNotifier themeNotifier) async {
    print("IsDark$value");
    themeNotifier.setIsDarkTheme(value);
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool('darkMode', value);
  }
}
