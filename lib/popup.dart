import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class PopUp extends StatefulWidget {
  _PopUpState createState() => _PopUpState();
}

class _PopUpState extends State<PopUp> {
  final string = 'hello world, Aradhana here';
  final string1 = 'watching anime could have been my job';
  final music = 'j-pop, j-rock, anisongs, edm, a (very) bit of k-pop';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        height: 200,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.black,
          elevation: 10,
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(
                  FontAwesome.code,
                  size: 20,
                  color: Colors.greenAccent,
                ),
                title: TweenAnimationBuilder<int>(
                  builder: (BuildContext context, Object value, Widget child) {
                    return Text(
                      string.substring(0, value),
                      style: GoogleFonts.firaCode(
                        fontSize: 15.5,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: Colors.greenAccent,
                      ),
                    );
                  },
                  duration: Duration(seconds: 3),
                  tween: IntTween(begin: 0, end: string.length),
                ),
              ),
              ListTile(
                leading: Icon(
                  FontAwesome.heart,
                  size: 20,
                  color: Colors.greenAccent,
                ),
                title: TweenAnimationBuilder<int>(
                  builder: (BuildContext context, Object value, Widget child) {
                    return Text(
                      string1.substring(0, value),
                      style: GoogleFonts.firaCode(
                        fontSize: 15.5,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: Colors.greenAccent,
                      ),
                    );
                  },
                  duration: Duration(seconds: 3),
                  tween: IntTween(begin: 0, end: string1.length),
                ),
              ),
              ListTile(
                leading: Icon(
                  FontAwesome.headphones,
                  size: 20,
                  color: Colors.greenAccent,
                ),
                title: TweenAnimationBuilder<int>(
                  builder: (BuildContext context, Object value, Widget child) {
                    return Text(
                      music.substring(0, value),
                      style: GoogleFonts.firaCode(
                        fontSize: 15.5,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: Colors.greenAccent,
                      ),
                    );
                  },
                  duration: Duration(seconds: 3),
                  tween: IntTween(begin: 0, end: music.length),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
