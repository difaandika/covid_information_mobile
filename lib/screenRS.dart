import 'package:covid_19/bing.dart';
import 'package:covid_19/config/palette.dart';
import 'package:covid_19/constant.dart';
import 'package:covid_19/inibing.dart';
import 'package:covid_19/rs.dart';
import 'package:covid_19/widgets/counter.dart';
import 'package:covid_19/widgets/my_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:url_launcher/url_launcher.dart';

class ScreenRS extends StatefulWidget {
  @override
  _ScreenRSState createState() => _ScreenRSState();
}

class _ScreenRSState extends State<ScreenRS> {
  void _LaunchCaller(int number) async {
    var url = "tel:${number.toString()}";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not place call';
    }
  }

  void _LaunchUrl(String Url) async {
    if (await canLaunch(Url)) {
      await launch(Url);
    } else {
      throw 'could not place call';
    }
  }

  String dt;
  String positif;
  String sembuh;

  @override
  void initState() {
    super.initState();
    readRefferal();
  }

  Future readRefferal() async {
    String baseUrl = "https://api.kawalcorona.com/indonesia";
    var response =
        await http.get(baseUrl, headers: {"Accept": "application/json"});
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);

      setState(() {
        List<String> listpositif = jsonData[0]['positif'].split(',');
        positif = listpositif[0] + listpositif[1];
        List<String> listsembuh = jsonData[0]['sembuh'].split(',');
        sembuh = listsembuh[0] + listsembuh[1];
        List<String> listdt = jsonData[0]['meninggal'].split(',');
        dt = listdt[0] + listdt[1];
      });
      print(positif);
      print(response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MyHeader(
              image:
                  "assets/icons/doctor-illustration-holding-wheelchair-by-Vexels.svg",
              textTop: "Stay safe",
              textBottom: "and stay healthy.",
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Color(0xFFE5E5E5),
                ),
              ),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset("assets/icons/maps-and-flags.svg"),
                  SizedBox(width: 20),
                  Expanded(
                    child: DropdownButton(
                      isExpanded: true,
                      underline: SizedBox(),
                      icon: SvgPicture.asset("assets/icons/dropdown.svg"),
                      value: "Indonesia",
                      items: ['Indonesia']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Referral Hospital\n",
                              style: kTitleTextstyle,
                            ),
                            TextSpan(
                              text: "Tap to see nearest referal hospital",
                              style: TextStyle(
                                color: kTextLightColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Rs();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "See details",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Rs();
                          },
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(20),
                      height: 178,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 30,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/map.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Hotline\n",
                              style: kTitleTextstyle,
                            ),
                            TextSpan(
                              text: "Tap to chat Whatsapp",
                              style: TextStyle(
                                color: kTextLightColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      _LaunchUrl(
                          "https://api.whatsapp.com/send?phone=6281133399000&text=&source=&data=&app_absent=");
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      padding: const EdgeInsets.all(10.0),
                      height: screenHeight * 0.15,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF11249F).withOpacity(.7),
                            Color(0xFF3383CD),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          SvgPicture.asset("assets/icons/nurse.svg",
                              height: 90),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Whatsapp Covid19 RI \nfor Information',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.01),
                              Text(
                                'If any information appear  >',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                ),
                                maxLines: 2,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
