import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';


class ProfileChangePassword extends StatefulWidget {
  @override
  _ProfileChangePasswordState createState() => _ProfileChangePasswordState();
}


class _ProfileChangePasswordState extends State<ProfileChangePassword> with TickerProviderStateMixin{

bool _passwordVisible = false;

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
                  child: Text('Change Password',
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
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Column(
                  children: [                  
                  
                    Container(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('Old Password',
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.bodyText2,
                              letterSpacing: 1.8,
                              fontWeight: FontWeight.w600
                            ),
                            ),
                          ),
                          TextField(
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.subtitle1,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2,
                            ),
                            autofocus: true,
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              hintText: 'Password',
                              hintStyle: GoogleFonts.roboto(
                                  textStyle:
                                      Theme.of(context).textTheme.bodyText2,
                                  letterSpacing: 1.8,
                                  fontWeight: FontWeight.w300),
                              prefixIcon: Icon(Icons.lock_outlined),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    width: 1),
                              ),
                            ),
                          ),
                        ],
                      )
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('New Password',
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.bodyText2,
                              letterSpacing: 1.8,
                              fontWeight: FontWeight.w600
                            ),
                            ),
                          ),
                          TextField(
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.subtitle1,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2,
                            ),
                            autofocus: true,
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              hintText: 'Password',
                              hintStyle: GoogleFonts.roboto(
                                  textStyle:
                                      Theme.of(context).textTheme.bodyText2,
                                  letterSpacing: 1.8,
                                  fontWeight: FontWeight.w300),
                              prefixIcon: Icon(Icons.lock_outlined),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    width: 1),
                              ),
                            ),
                          ),
                        ],
                      )
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text('Confirm New Password',
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.bodyText2,
                              letterSpacing: 1.8,
                              fontWeight: FontWeight.w600
                            ),
                            ),
                          ),
                          TextField(
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.subtitle1,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.2,
                            ),
                            autofocus: true,
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              hintText: 'Password',
                              hintStyle: GoogleFonts.roboto(
                                  textStyle:
                                      Theme.of(context).textTheme.bodyText2,
                                  letterSpacing: 1.8,
                                  fontWeight: FontWeight.w300),
                              prefixIcon: Icon(Icons.lock_outlined),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _passwordVisible
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    width: 1),
                              ),
                            ),
                          ),
                        ],
                      )
                    ),
                    
                  ],
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
                  child: ElevatedButton(
                  onPressed: (){
                  }, 
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).colorScheme.secondary, 
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                    alignment: Alignment.center,
                  ),
                  child: Text('Submit',
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
