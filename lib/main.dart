import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dsc/components/heading.dart';
import 'package:flutter_dsc/components/infocard.dart';
import 'package:flutter_dsc/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DSC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration: backgroundDecoration,
          child: Stack(
            children: <Widget>[
              Heading(),
              InfoCard(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 100,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    children: <Widget>[
                      Links(
                        title: 'Bigsky',
                        url: 'https://bigsky.benilde.edu.ph/d2l/login',
                        colors: [
                          Colors.orange[900],
                          Colors.deepPurple,
                        ],
                      ),
                      Links(
                        title: 'SIS',
                        url: 'https://apps.benilde.edu.ph',
                        colors: [
                          Colors.blue[400],
                          Colors.green[800],
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Links extends StatelessWidget {
  final String title;
  final String url;
  final List<Color> colors;

  Links({this.title, this.url, this.colors});

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _launchURL(url),
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 15.0,
              color: Colors.black38,
              offset: Offset(5.0, 5.0),
            )
          ],
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 5.0,
          vertical: 10.0,
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
