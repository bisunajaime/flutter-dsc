import 'package:flutter/material.dart';
import 'package:flutter_dsc/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        height: 250,
        decoration: BoxDecoration(
          color: Color(0xff08023E),
          boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              color: Colors.black38,
              offset: Offset(5.0, 5.0),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: <Widget>[
            UserInfo(),
            SocialInfo(),
          ],
        ),
      ),
    );
  }
}

class SocialInfo extends StatelessWidget {
  const SocialInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: () => _launchURL('https://facebook.com'),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: bgFacebook,
                child: Icon(
                  FontAwesomeIcons.facebookSquare,
                  color: Colors.white,
                  size: 40.0,
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => _launchURL('https://instagram.com'),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: bgInstagram,
                child: Icon(
                  FontAwesomeIcons.instagram,
                  color: Colors.white,
                  size: 40.0,
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => _launchURL('https://twitter.com'),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: bgTwitter,
                child: Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.white,
                  size: 40.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: 60.0,
            backgroundImage: AssetImage('assets/images/panda.jpg'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Jose Jaime G. Bisuna',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'BS-IS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                '11701234',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
