import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phc/theme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'splashscreen.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]).then((_) {
    SharedPreferences.getInstance().then((prefs) {
      var darkModeOn = prefs.getBool('darkMode') ?? false;
      runApp(Provider(
        create: (_) => ThemeNotifier(darkTheme: darkModeOn),
        child: MyApp(),
      ));
      /*runApp(
        ChangeNotifierProvider<ThemeNotifier>(
          builder: (_) => ThemeNotifier(darkModeOn ? darkTheme : lightTheme),
          child: MyApp(),
        ),
      );*/
    });
  });
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //final themeNotifier = Provider.of<ThemeNotifier>(context);
    //print("themeNotifier ${themeNotifier.isDarkTheme()}");
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier themeNotifier, child) {
          return MaterialApp(
              title: 'Phillip Capital',
              debugShowCheckedModeBanner: false,
              theme: lightthemeData(),
              darkTheme: darkThemeData(),
              themeMode:
                  themeNotifier.darkTheme ? ThemeMode.dark : ThemeMode.light,
              home: SafeArea(top: false, child: SplashScreen()
                  // Login()
                  // Dashboard()
                  // Report()
                  // Portfolio()
                  // Funds()
                  // WithdrawFunds()
                  // Profile()
                  // NoInternet()
                  // ApiError()
                  ));
        },
      ),
    );
  }
}
