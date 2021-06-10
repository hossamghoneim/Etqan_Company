import 'package:etqan_company/widgets/Ads.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int length = 7;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Ads Page",
        ),
      ),
      body: Ads(
        length: length,
        scroll: true,
      ),
    );
  }
}
