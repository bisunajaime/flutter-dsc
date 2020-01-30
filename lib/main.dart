import 'package:flutter/material.dart';
import 'package:flutter_dsc/components/heading.dart';
import 'package:flutter_dsc/components/infocard.dart';
import 'package:flutter_dsc/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
            ],
          ),
        ),
      ),
    );
  }
}
