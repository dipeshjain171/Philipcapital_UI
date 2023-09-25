import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phc/forgot_password.dart';
import 'package:phc/forgot_userid.dart';
import 'package:phc/login_success.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  bool _passwordVisible = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(FocusNode());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15,left: 15),
                // margin: EdgeInsets.only(bottom: 15),
                color: Theme.of(context).colorScheme.surface,
                height: 54,
                alignment: Alignment.topLeft,
                child: Image.asset( Theme.of(context).brightness == Brightness.dark
                    ?'assets/images/logodark.png':'assets/images/logolight.png',
                    fit: BoxFit.contain),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                ),
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: 220,
                      width: 220,
                      child: Image.asset('assets/images/signin_bg.png',
                          fit: BoxFit.contain),
                    ),

                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Column(
                        children: [
                          Text(
                            'Login to Pickle',
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.headline2,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'enter details to login',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                                textStyle:
                                    Theme.of(context).textTheme.bodyText1,
                                letterSpacing: 1.5),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(vertical: 25),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                            child: TextField(
                              style: GoogleFonts.roboto(
                                textStyle:
                                    Theme.of(context).textTheme.subtitle1,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.2,
                              ),
                              autofocus: true,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 15),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                hintText: 'Enter UserId',
                                hintStyle: GoogleFonts.roboto(
                                    textStyle:
                                        Theme.of(context).textTheme.bodyText2,
                                    letterSpacing: 1.8,
                                    fontWeight: FontWeight.w300),
                                prefixIcon: Icon(Icons.person_outlined),
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
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: TextField(
                              style: GoogleFonts.roboto(
                                textStyle:
                                    Theme.of(context).textTheme.subtitle1,
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
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                    primary:
                                        Theme.of(context).colorScheme.primary,
                                    padding:
                                        EdgeInsets.fromLTRB(15, 15, 15, 15),
                                  ),
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Dialog(
                                              elevation: 2,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              alignment: Alignment.center,
                                              child: ForgotUserID());
                                        });
                                  },
                                  child: Text(
                                    'Forget UserID ?',
                                    style: GoogleFonts.roboto(
                                        textStyle:
                                            Theme.of(context).textTheme.button,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    primary:
                                        Theme.of(context).colorScheme.primary,
                                    padding:
                                        EdgeInsets.fromLTRB(15, 15, 15, 15),
                                  ),
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Dialog(
                                              elevation: 2,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              alignment: Alignment.center,
                                              child: ForgotPassword());
                                        });
                                  },
                                  child: Text(
                                    'Forgot Password ?',
                                    style: GoogleFonts.roboto(
                                        textStyle:
                                            Theme.of(context).textTheme.button,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 15),
                            child: Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushReplacement<void, void>(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  LoginSuccess()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 20),
                                      alignment: Alignment.center,
                                    ),
                                    child: Text(
                                      'Login',
                                      style: GoogleFonts.roboto(
                                        textStyle:
                                            Theme.of(context).textTheme.button,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            // padding: EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Not Registered Yet ?',
                                  style: GoogleFonts.roboto(
                                      textStyle:
                                          Theme.of(context).textTheme.headline6,
                                      // color: Colors.black.withOpacity(0.6),
                                      fontSize: 14,
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.w500),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    primary:
                                        Theme.of(context).colorScheme.primary,
                                    padding:
                                        EdgeInsets.fromLTRB(15, 15, 15, 15),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Open New Account',
                                    style: GoogleFonts.roboto(
                                        textStyle:
                                            Theme.of(context).textTheme.button,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    // Expanded(
                    //   child: Stack(
                    //     fit: StackFit.expand,
                    //     children: [
                    //       Container(
                    //         padding: EdgeInsets.symmetric(vertical: 25),
                    //         child: Column(
                    //           children: [
                    //             Container(
                    //               margin: EdgeInsets.only(bottom: 15),
                    //               child: TextField(
                    //                 style: GoogleFonts.roboto(
                    //                   textStyle: Theme.of(context).textTheme.subtitle1,
                    //                   fontWeight: FontWeight.w600,
                    //                   letterSpacing: 1.2,
                    //                 ),
                    //                 autofocus: true,
                    //                 decoration: InputDecoration(
                    //                   contentPadding: EdgeInsets.symmetric(vertical: 15),
                    //                   floatingLabelBehavior: FloatingLabelBehavior.never,
                    //                   hintText: 'Enter UserId',
                    //                   hintStyle: GoogleFonts.roboto(
                    //                     textStyle: Theme.of(context).textTheme.bodyText2,
                    //                     letterSpacing: 1.8,
                    //                     fontWeight: FontWeight.w300
                    //                   ),
                    //                   prefixIcon: Icon(Icons.person_outlined),

                    //                   enabledBorder: OutlineInputBorder(
                    //                     borderSide: BorderSide(color: Colors.grey),
                    //                   ),
                    //                   focusedBorder: OutlineInputBorder(
                    //                     borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),

                    //             Container(
                    //               margin: EdgeInsets.only(bottom: 5),
                    //               child: TextField(
                    //                 style: GoogleFonts.roboto(
                    //                   textStyle: Theme.of(context).textTheme.subtitle1,
                    //                   fontWeight: FontWeight.w600,
                    //                   letterSpacing: 1.2,
                    //                 ),
                    //                 autofocus: true,
                    //                 obscureText: !_passwordVisible,
                    //                 decoration: InputDecoration(
                    //                   contentPadding: EdgeInsets.symmetric(vertical: 15),
                    //                   floatingLabelBehavior: FloatingLabelBehavior.never,

                    //                   hintText: 'Password',
                    //                   hintStyle: GoogleFonts.roboto(
                    //                     textStyle: Theme.of(context).textTheme.bodyText2,
                    //                     letterSpacing: 1.8,
                    //                     fontWeight: FontWeight.w300
                    //                   ),
                    //                   prefixIcon: Icon(Icons.lock_outlined),
                    //                   suffixIcon: IconButton(
                    //                     icon: Icon(
                    //                       _passwordVisible
                    //                       ? Icons.visibility_outlined
                    //                       : Icons.visibility_off_outlined,
                    //                     ),
                    //                     onPressed: (){
                    //                       setState(() {
                    //                           _passwordVisible = !_passwordVisible;
                    //                       });
                    //                     },
                    //                   ),

                    //                   enabledBorder: OutlineInputBorder(
                    //                     borderSide: BorderSide(color: Colors.grey),
                    //                   ),
                    //                   focusedBorder: OutlineInputBorder(
                    //                     borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 1),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),

                    //             Container(
                    //               child: Row(
                    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //                 crossAxisAlignment: CrossAxisAlignment.center,
                    //                 children: [
                    //                   TextButton(
                    //                     style: TextButton.styleFrom(
                    //                       primary: Theme.of(context).colorScheme.primary,
                    //                       padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    //                     ),
                    //                     onPressed: (){
                    //                       showDialog(
                    //                       context: context,
                    //                       builder: (BuildContext context) {
                    //                         return Dialog(
                    //                           elevation: 2,
                    //                           shape: RoundedRectangleBorder(
                    //                             borderRadius: BorderRadius.circular(15)
                    //                           ),
                    //                           alignment: Alignment.center,
                    //                           child: ForgotUserID()
                    //                         );
                    //                       });
                    //                     },
                    //                     child: Text('Forget UserID ?',
                    //                       style: GoogleFonts.roboto(
                    //                         textStyle: Theme.of(context).textTheme.button,
                    //                         color: Theme.of(context).colorScheme.primary,
                    //                         fontSize: 14,
                    //                         fontWeight: FontWeight.bold
                    //                       ),
                    //                     ),
                    //                   ),
                    //                   TextButton(
                    //                     style: TextButton.styleFrom(
                    //                       primary: Theme.of(context).colorScheme.primary,
                    //                       padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    //                     ),
                    //                     onPressed: (){
                    //                       showDialog(
                    //                       context: context,
                    //                       builder: (BuildContext context) {
                    //                         return Dialog(
                    //                           elevation: 2,
                    //                           shape: RoundedRectangleBorder(
                    //                             borderRadius: BorderRadius.circular(15)
                    //                           ),
                    //                           alignment: Alignment.center,
                    //                           child: ForgotPassword()
                    //                         );
                    //                       });
                    //                     },
                    //                     child: Text('Forgot Password ?',
                    //                       style: GoogleFonts.roboto(
                    //                         textStyle: Theme.of(context).textTheme.button,
                    //                         color: Theme.of(context).colorScheme.primary,
                    //                         fontSize: 14,
                    //                         fontWeight: FontWeight.bold
                    //                       ),
                    //                     ),
                    //                   ),

                    //                 ],
                    //               ),
                    //             ),

                    //             Container(
                    //               margin: EdgeInsets.symmetric(vertical: 15),
                    //               child: Row(
                    //                 children: [
                    //                   Expanded(
                    //                     child: ElevatedButton(
                    //                       onPressed: (){
                    //                         Navigator.pushReplacement<void, void>(context,
                    //                           MaterialPageRoute(
                    //                             builder: (BuildContext context) => LoginSuccess()
                    //                           )
                    //                         );
                    //                       },
                    //                       style: ElevatedButton.styleFrom(
                    //                         primary: Theme.of(context).colorScheme.secondary,
                    //                         padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    //                         alignment: Alignment.center,
                    //                       ),
                    //                       child: Text('Login',
                    //                         style: GoogleFonts.roboto(
                    //                           textStyle: Theme.of(context).textTheme.button,
                    //                         ),
                    //                       ),
                    //                     ),
                    //                   )
                    //                 ],
                    //               ),
                    //             ),

                    //           ],
                    //         ),
                    //       ),

                    //       Positioned(
                    //         bottom: 0, left: 0, right: 0,
                    //         child: Container(
                    //           // padding: EdgeInsets.symmetric(vertical: 5),
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Text('Not Registered Yet ?',
                    //                 style: GoogleFonts.roboto(
                    //                   textStyle: Theme.of(context).textTheme.headline6,
                    //                   // color: Colors.black.withOpacity(0.6),
                    //                   fontSize: 14,
                    //                   letterSpacing: 1.2,
                    //                   fontWeight: FontWeight.w500
                    //                 ),
                    //               ),
                    //               TextButton(
                    //                 style: TextButton.styleFrom(
                    //                   primary: Theme.of(context).colorScheme.primary,
                    //                   padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                    //                 ),
                    //                 onPressed: (){},
                    //                 child: Text('Open New Account',
                    //                   style: GoogleFonts.roboto(
                    //                     textStyle: Theme.of(context).textTheme.button,
                    //                     color: Theme.of(context).colorScheme.primary,
                    //                     fontSize: 14,
                    //                     fontWeight: FontWeight.bold
                    //                   ),
                    //                 ),
                    //               ),

                    //             ],
                    //           ),
                    //         )
                    //       )

                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
