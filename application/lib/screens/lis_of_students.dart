import 'package:flutter/material.dart';

class ListOfStudents extends StatelessWidget {
  String originName;
  ListOfStudents({this.originName});
  @override
  Widget build(BuildContext context) {
    int length = 7;
    return Scaffold(
      appBar: AppBar(
        title: Text('List Of Students'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
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
                        image:
                            originName == 'Degrees' || originName == 'Students'
                                ? 'assets/student-icon.png'
                                : 'assets/teaching-icon.png',
                        placeholder:
                            originName == 'Degrees' || originName == 'Students'
                                ? 'assets/student-icon.png'
                                : 'assets/teaching-icon.png',
                        fit: BoxFit.fill,
                      ),
                      title: Text(
                          originName == 'Degrees' || originName == 'Students'
                              ? "Student Name"
                              : "Assignment title"),
                      subtitle: Text(
                          originName == 'Degrees' || originName == 'Students'
                              ? 'Class name'
                              : "Subject Name"),
                      trailing: originName == 'Students'
                          ? Icon(Icons.work)
                          : Text(
                              originName == 'Degrees' ? 'تقييم' : 'تعديل',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20,
                              ),
                            ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
