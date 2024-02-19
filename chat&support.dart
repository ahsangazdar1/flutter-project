import 'package:e6/term&condition.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class chats extends StatelessWidget {
  bool isToggled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(
              child: Text(
                "chat & support",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            )),
        body: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/pic1.png'),
                radius: 30,
              ),
              title: Text(
                'Alex Lee',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
              subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                ),
              ),
              trailing: Text('15:34'),
              tileColor: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/pic3.png'),
                radius: 30,
              ),
              title: Text(
                'Micheal Ulasi',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
              subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                ),
              ),
              trailing: Text('15:34'),
              tileColor: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/pic3.png'),
                radius: 30,
              ),
              title: Text(
                'Cristofer',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
              subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                ),
              ),
              trailing: Text('15:34'),
              tileColor: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/pic3.png'),
                radius: 30,
              ),
              title: Text(
                'David  Silbia',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
              subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                ),
              ),
              trailing: Text('15:34'),
              tileColor: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/pic3.png'),
                radius: 30,
              ),
              title: Text(
                'Ashfak Sayem',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
              subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                ),
              ),
              trailing: Text('15:34'),
              tileColor: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/pic3.png'),
                radius: 30,
              ),
              title: Text(
                'Rocks Velkeinjen ',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
              subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                ),
              ),
              trailing: Text('15:34'),
              tileColor: Colors.white,
            ),
          ],
        ));
  }
}
