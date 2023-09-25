import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/login.dart';

confirmationAlertDialog(BuildContext context,onYes,onNo) {
  Widget noButton = OutlinedButton(
    onPressed: () {
      onNo();

    },
    style: OutlinedButton.styleFrom(
      primary: Theme.of(context).colorScheme.onSecondary,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      alignment: Alignment.center,
      side: BorderSide(
          width: 1, color: Theme.of(context).colorScheme.onSecondary),
    ),
    child: Text(
      'No',
      style: GoogleFonts.roboto(
        textStyle: Theme.of(context).textTheme.button,
        color: Theme.of(context).colorScheme.onSecondary,
      ),
    ),
  );
  Widget yesButton = ElevatedButton(
    onPressed: () {
     onYes();
    },
    style: ElevatedButton.styleFrom(
      primary: Theme.of(context).colorScheme.secondary,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      alignment: Alignment.center,
    ),
    child: Text(
      'Yes',
      style: GoogleFonts.roboto(
        textStyle: Theme.of(context).textTheme.button,
      ),
    ),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    backgroundColor: Theme.of(context).colorScheme.surface,
    title: Text(
      "Logout from Account",
      textAlign: TextAlign.center,
      style: GoogleFonts.roboto(
          textStyle: Theme.of(context).textTheme.headline6,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5),
    ),
    content: Text(
      "Are you sure want to logged out from the account?",
      textAlign: TextAlign.center,
      style: GoogleFonts.roboto(
          textStyle: Theme.of(context).textTheme.subtitle2,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.2),
    ),
    actions: [
      Row(
        children: [
          Expanded(child: noButton),
          SizedBox(width: 10),
          Expanded(child: yesButton),
        ],
      ),
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
