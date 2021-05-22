import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Ads Page",
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 20,
                  ),
                  child: Text(
                    'AD Number 1',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 2,
                  ),
                  child: FlatButton(
                    child: Text('Watch'),
                    onPressed: () {},
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 20,
                  ),
                  child: Text(
                    'AD Number 2',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 2,
                  ),
                  child: FlatButton(
                    child: Text('Watch'),
                    onPressed: () {},
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 20,
                  ),
                  child: Text(
                    'AD Number 3',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 2,
                  ),
                  child: FlatButton(
                    child: Text('Watch'),
                    onPressed: () {},
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 20,
                  ),
                  child: Text(
                    'AD Number 4',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 2,
                  ),
                  child: FlatButton(
                    child: Text('Watch'),
                    onPressed: () {},
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
