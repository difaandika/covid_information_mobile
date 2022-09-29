import 'package:covid_19/constant.dart';
import 'package:covid_19/screens/bottom_nav_screen.dart';
import 'package:covid_19/widgets/my_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class AppScreen extends StatefulWidget {
  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  void _LaunchUrl(String Url) async {
    if (await canLaunch(Url)) {
      await launch(Url);
    } else {
      throw 'could not place call';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MyHeader(
                  image:
                      "assets/icons/doctor-greeting-character-isometric-by-Vexels.svg",
                  textTop: "Information",
                  textBottom: "About This App",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Creator",
                                  style: kTitleTextstyle,
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          _LaunchUrl(
                              "https://www.instagram.com/difaandika/?hl=id");
                        },
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(1, 1),
                                spreadRadius: 1,
                                blurRadius: 1,
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/ig.png",
                                width: 30,
                              ),
                              SizedBox(width: 25),
                              RichText(
                                text: TextSpan(
                                  text: "Instagram\n",
                                  style: TextStyle(
                                    color: AppColors.mainColor,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Difaandika\n",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              IconButton(
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: null,
                              ),
                            ],
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _LaunchUrl("https://twitter.com/difaandika1");
                        },
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(1, 1),
                                spreadRadius: 1,
                                blurRadius: 1,
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/twitter.png",
                                width: 30,
                              ),
                              SizedBox(width: 25),
                              RichText(
                                text: TextSpan(
                                  text: "Twitter\n",
                                  style: TextStyle(
                                    color: AppColors.mainColor,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Difaandika1\n",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              IconButton(
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: null,
                              ),
                            ],
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _LaunchUrl(
                              "https://www.youtube.com/channel/UCTywLNCcQMS0v599Zr5weXw?view_as=subscriber");
                        },
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(1, 1),
                                spreadRadius: 1,
                                blurRadius: 1,
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/yt.png",
                                width: 30,
                              ),
                              SizedBox(width: 25),
                              RichText(
                                text: TextSpan(
                                  text: "Youtube\n",
                                  style: TextStyle(
                                    color: AppColors.mainColor,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Difaandika\n",
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              IconButton(
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: null,
                              ),
                            ],
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "\nRest Api",
                                  style: kTitleTextstyle,
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          _LaunchUrl("https://api.kawalcorona.com/indonesia");
                        },
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(1, 1),
                                spreadRadius: 1,
                                blurRadius: 1,
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(width: 25),
                              RichText(
                                text: TextSpan(
                                  text: "Kawal Corona\n",
                                  style: TextStyle(
                                    color: AppColors.mainColor,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          "https://api.kawalcorona.com/indonesia\n",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              IconButton(
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: null,
                              ),
                            ],
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _LaunchUrl("https://bing.com/covid/local/indonesia");
                        },
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(1, 1),
                                spreadRadius: 1,
                                blurRadius: 1,
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(width: 25),
                              RichText(
                                text: TextSpan(
                                  text: "Bing\n",
                                  style: TextStyle(
                                    color: AppColors.mainColor,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          "https://bing.com/covid/local/indonesia\n",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              IconButton(
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: null,
                              ),
                            ],
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _LaunchUrl(
                              "https://corona.alodokter.com/cek-risiko-tertular-virus-corona-gratis");
                        },
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(1, 1),
                                spreadRadius: 1,
                                blurRadius: 1,
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(width: 25),
                              RichText(
                                text: TextSpan(
                                  text: "Alodokter\n",
                                  style: TextStyle(
                                    color: AppColors.mainColor,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          "https://corona.alodokter.com/cek-risiko-\ntertular-virus-corona-gratis\n",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              IconButton(
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: null,
                              ),
                            ],
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _LaunchUrl(
                              "https://www.youtube.com/channel/UCJm7i4g4z7ZGcJA_HKHLCVw");
                        },
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(1, 1),
                                spreadRadius: 1,
                                blurRadius: 1,
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(width: 25),
                              RichText(
                                text: TextSpan(
                                  text: "The Flutter Way\n",
                                  style: TextStyle(
                                    color: AppColors.mainColor,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3,
                                  ),
                                  children: [],
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              IconButton(
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: null,
                              ),
                            ],
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _LaunchUrl(
                              "https://www.google.com/maps/d/u/0/viewer?ll=-6.167461480516341%2C106.92439881183896&z=9&mid=1G0xfB8QRIFsLkZHLCHVX4faL7RxDLPdG");
                        },
                        child: Container(
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            border: Border.all(color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset(1, 1),
                                spreadRadius: 1,
                                blurRadius: 1,
                              )
                            ],
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(width: 25),
                              RichText(
                                text: TextSpan(
                                  text: "GoogleMap\n",
                                  style: TextStyle(
                                    color: AppColors.mainColor,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          "https://www.google.com/maps/d/u/0/\nviewer?ll=-6.167461480516341%2C106.\n92439881183896&z=9&mid=1G0xfB8Q\nRIFsLkZHLCHVX4faL7RxDLPdG",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              IconButton(
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: null,
                              ),
                            ],
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ));
  }
}
