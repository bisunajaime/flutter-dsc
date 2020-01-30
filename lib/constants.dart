import 'package:flutter/material.dart';

final BoxDecoration backgroundDecoration = new BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color(0xff4568DC),
      Color(0xffB06AB3),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
);

const BoxDecoration bgFacebook = BoxDecoration(
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(10),
  ),
  color: Color(0xff3b5998),
);

const BoxDecoration bgInstagram = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color(0xff4f5bd5),
      Color(0xff962fbf),
      Color(0xffd62976),
      Color(0xfffa7e1e),
      Color(0xfffeda75),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
);

const bgTwitter = BoxDecoration(
  color: Color(0xff00acee),
  borderRadius: BorderRadius.only(
    bottomRight: Radius.circular(10),
  ),
);

const bgGithub = BoxDecoration(
  color: Color(0xff24292e),
);
const bgLinkedin = BoxDecoration(
  color: Color(0xff0e76a8),
);
