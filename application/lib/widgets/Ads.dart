import 'package:flutter/material.dart';

class Ads extends StatelessWidget {
  Ads({@required this.length, @required this.scroll});

  final int length;
  final bool scroll;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              shrinkWrap: true,
              physics: scroll == false
                  ? NeverScrollableScrollPhysics()
                  : AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: ListTile(
                    // onTap: () {
                    //Navigator.pushNamed(context, '/post_screen');
                    //},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    leading: FadeInImage.assetNetwork(
                      width: 80,
                      image: 'assets/click-to-movie-watch-2807704-2370745.png',
                      placeholder:
                          'assets/click-to-movie-watch-2807704-2370745.png',
                      fit: BoxFit.fill,
                    ),
                    title: Text("Ad 1"),
                    subtitle: Text('Ad 1'),
                    trailing: FlatButton(
                      child: Text(
                        'Watch',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                      color: Colors.lightBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}

SelectedItem(BuildContext context, item) {
  if (item == 0) {
    print('Save Post Case');
    Navigator.pushNamed(context, '/saved_post_screen');
  }
  if (item == 1) {
    print('Edit Post Case');
  }
  if (item == 2) {
    print('Delete Post Case');
  }
  if (item == 3) {
    print('Un Save Post Case');
  }
}
