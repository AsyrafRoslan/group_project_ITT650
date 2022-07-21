import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital Markers App'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl: 'https://firebasestorage.googleapis.com/v0/b/gp-itt593.appspot.com/o/user%2Fimage.png?alt=media&token=b393286f-4d29-441a-9ddb-8e9ea7e482a8',
              placeholder: (context, url) => Container(),
              errorWidget: (context, url, error) => Container(),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: [
                  Text(
                    'ABOUT US',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('This Application help users to see nearest hospital base on their current location. Colored markers will be displayed indicating there are hospitals in the area.', style: TextStyle(fontSize: 14, color: Colors.white), textAlign: TextAlign.center),
                ],
              ),
            ),
            SizedBox(height: 40),
            Column(
              children: [
                Text('Developers Details :', style: TextStyle(fontSize: 14)),
                SizedBox(height: 5),
                Text('CS251 5B', style: TextStyle(fontSize: 14)),
                SizedBox(height: 20),
                Text('1. Muhammad Asyraf Bin Md Roslan- 2021112875', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                Text('2. Nor Izzati Binti Md Khazizi- 2021113953', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                Text('3. Hazwani Binti Hamdan- 2021102581', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                Text('4. Nur Syazwani Binti Zaini- 2021119983', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              ],
            ),
            SizedBox(height: 20),
            Divider(indent: 30, endIndent: 30, color: Colors.purple,),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                launchUrl(Uri.parse('https://github.com/AsyrafRoslan'));
              },
              child: Text('Website URL')
            ),
            Text(
              'COPYRIGHT ©2022 HOSPITAL MARKERS APP',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}