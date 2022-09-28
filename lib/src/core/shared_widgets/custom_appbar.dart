import 'package:flutter/material.dart';

AppBar custonAppBar(BuildContext context, String title) {
  return AppBar(
    automaticallyImplyLeading: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.headline1),
        const Text(
          'Flutterando Masterclass',
          style: TextStyle(
              fontSize: 12, fontFamily: 'Poppins', fontWeight: FontWeight.w500),
        ),
      ],
    ),
    actions: const [
      Padding(padding: EdgeInsets.only(right: 15.0), child: ImageIcon(
          // color: Color(0xff055AA3),
          AssetImage('assets/images/icon_awesome-moon/iconawesomemoon.png'))),
    ],
    leading: const Padding(
        padding: EdgeInsets.only(left: 15),
        child: ImageIcon(
            color: Color(0xff055AA3), AssetImage('assets/images/logo.png'))),
  );
}
