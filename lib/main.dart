import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(
    MaterialApp(
      home: Intro(),
    ),
  );
}

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  curve: Curves.easeInOut,
                  duration: Duration(milliseconds: 300),
                  reverseDuration: Duration(milliseconds: 300),
                  type: PageTransitionType.fade,
                  child: MyApp(),
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: Text(
              'Hi',
              style: GoogleFonts.shadowsIntoLight(
                  fontSize: 30.0,
                  letterSpacing: 2.5,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/haru-profile.png'),
              ),
              Text(
                'Aradhana Nayak',
                style: GoogleFonts.shadowsIntoLight(
                    fontSize: 30.0,
                    letterSpacing: 2.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Text(
                'a coder but not a genius',
                style: GoogleFonts.raleway(
                    fontSize: 15.0,
                    letterSpacing: 2.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.code,
                    size: 30.0,
                    color: Colors.indigo[500],
                  ),
                  title: Text(
                    "not a genius but I code smh",
                    style: GoogleFonts.firaCode(
                      fontSize: 15.5,
                      letterSpacing: 1,
                      color: Colors.indigo[500],
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: ListTile(
                  leading: Icon(
                    FontAwesome5Brands.github,
                    size: 30.0,
                    color: Colors.indigo[500],
                  ),
                  title: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        style: GoogleFonts.firaCode(
                          fontSize: 15.5,
                          letterSpacing: 1,
                          color: Colors.indigo[500],
                        ),
                        text: "aradhana1807",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () async {
                            var url = "https://github.com/aradhana1807";
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          }),
                  ])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
