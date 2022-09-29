import 'package:covid_19/home.dart';
import 'package:covid_19/inibing.dart';
import 'package:covid_19/screens/bottom_nav_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class Bing extends StatefulWidget {
  @override
  _BingState createState() => _BingState();
}

class _BingState extends State<Bing> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.pop(context, false)),
            backgroundColor: Color(0xFF11249F).withOpacity(.9),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl:
                  'https://corona.alodokter.com/cek-risiko-tertular-virus-corona-gratis',
            ),
          ),
        ),
      ),
    );
  }
}
