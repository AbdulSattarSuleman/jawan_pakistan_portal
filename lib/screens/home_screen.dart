import 'package:flutter/material.dart';
import 'package:user_portal/constant.dart';
import 'package:url_launcher/url_launcher.dart';

const _fburl = "https://www.facebook.com/jawanPakistan786/";
const _yturl = "https://www.youtube.com/channel/UCDFaBGwHt_PLF2eihYNG4fQ";

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
      appBar: AppBar(),
      body: ListView.builder(
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
                  Image.asset(
                    images[index],
                    fit: BoxFit.fill,
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: _launchFBUrl,
                          child: Text(
                            'FaceBook Page',
                            style: kfbText,
                          ),
                        ),
                        GestureDetector(
                          onTap: _launchYTUrl,
                          child: Text(
                            'Youtube Channel',
                            style: kytText,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Email Me',
                          style: kfbText,
                        ),
                        Text(
                          'Contact Us',
                          style: kytText,
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
