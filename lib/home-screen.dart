import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(23),
                bottomRight: Radius.circular(23),
              ),
              child: Image.asset('assets/top_img.jpeg'),
            ),
            SizedBox(height: 60),
            Center(
              child: Text(
                'Click the button to visit our Website',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                color: Color(0xFF27C5EC),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'VISIT WEBSITE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                onPressed: () {
                  print('Launch URL');
                  _launchWebsite('http://877drainhelpllc.com/');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                color: Color(0xFF27C5EC),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Franchise Opportunity',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                onPressed: () {
                  print('Launch URL');
                  _launchWebsite(
                      'https://877drainhelpllc.com/index.php/why-our-team/');
                },
              ),
            ),
            SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                color: Color(0xFF27C5EC),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'CALL',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                onPressed: () {
                  _call();
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  _launchWebsite(url) async {
    const url = ' ';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _call() async {
    const url = 'tel:8773724643';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
