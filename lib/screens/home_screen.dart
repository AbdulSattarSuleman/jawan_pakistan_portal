import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:user_portal/constant.dart';
import 'package:url_launcher/url_launcher.dart';

const _fburl = "https://www.facebook.com/jawanPakistan786/";
const _yturl = "https://www.youtube.com/channel/UCDFaBGwHt_PLF2eihYNG4fQ";
const _emailme = "mailto:a.abdulsattarsuleman@Gmail.com";
const _phone = "tel:+923152673964";
const _githubUrl =
    "https://github.com/AbdulSattarSuleman/jawan_pakistan_portal";

const double _iconSize = 50;

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  List<String> images = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jawan Pakistan",
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                clipBehavior: Clip.hardEdge,
                // borderOnForeground: true,
                elevation: 5.0,
                // shape: StadiumBorder(),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: _githubTravelApp,
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      height: 30,
                    ),
                    Text(
                      "Join Our Social Channels",
                      style: kfontSizeColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        right: 10,
                        bottom: 30,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: _launchFBUrl,
                            icon: Icon(
                              Icons.facebook,
                              color: Color(0xff3b5998),
                              size: _iconSize,
                            ),
                          ),
                          IconButton(
                            onPressed: _launchEmail,
                            icon: Icon(
                              Icons.mark_email_read,
                              color: Color(0xffEA4335),
                              size: _iconSize,
                            ),
                          ),
                          IconButton(
                            onPressed: _launchPhone,
                            icon: Icon(
                              Icons.phone_missed,
                              color: Colors.green,
                              size: _iconSize,
                            ),
                          ),
                          IconButton(
                            onPressed: _launchYTUrl,
                            icon: Icon(
                              CupertinoIcons.video_camera_solid,
                              color: Colors.amber,
                              size: _iconSize,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void _launchFBUrl() async {
  await canLaunch(_fburl) ? await launch(_fburl) : throw 'Could Not Reach';
}

void _launchYTUrl() async {
  await canLaunch(_yturl)
      ? await launch(_yturl)
      : throw 'Could not Reach Youtube';
}

void _launchEmail() async {
  await canLaunch(_emailme)
      ? await launch(_emailme)
      : throw "Please Contact With Email";
}

void _launchPhone() async {
  await canLaunch(_phone)
      ? await launch(_phone)
      : throw "Could Not Reach $_phone";
}

void _githubTravelApp() async {
  await canLaunch(_githubUrl)
      ? await launch(_githubUrl)
      : throw "Could Not Reach";
}
