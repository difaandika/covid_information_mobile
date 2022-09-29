import 'package:covid_19/screens/bottom_nav_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class inibing extends StatefulWidget {
  @override
  _inibingState createState() => _inibingState();
}

class _inibingState extends State<inibing> {
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
              initialUrl: 'https://bing.com/covid/local/indonesia',
            ),
          ),
        ),
      ),
    );
  }
}
