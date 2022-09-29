import 'package:covid_19/screens/bottom_nav_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class Rs extends StatefulWidget {
  @override
  _RsState createState() => _RsState();
}

class _RsState extends State<Rs> {
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
                  'https://www.google.com/maps/d/u/0/viewer?ll=-6.167461480516341%2C106.92439881183896&z=9&mid=1G0xfB8QRIFsLkZHLCHVX4faL7RxDLPdG',
            ),
          ),
        ),
      ),
    );
  }
}
