import 'package:e6/chat&support.dart';
import 'package:e6/edit%20profile.dart';
import 'package:e6/log%20out.dart';
import 'package:e6/privacy.dart';
import 'package:e6/setting%20page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'YAZZME',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: CircleAvatar(
              child: Image.network(""),
            ),
            title: Text('AHSAN GAZDAR'),
            subtitle: Text('03356748 xyz@gmail.com'),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 200,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.grey),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Edit(),
                  ),
                );
              },
              child: Text(
                'Edit profile',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Settings',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            tileColor: Colors.white,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => setting()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text(
              'Privacy Policy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            tileColor: Colors.white,
             onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => privacy()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.chat_sharp),
            title: Text(
              'Chat & Support',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            
          ),
          Divider(),
          GestureDetector(
            onTap: () {
              // Show the logout confirmation popup
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
                   contentPadding: EdgeInsets.all(20),
                    content: Container(
                      width: 400,
                      height: 350,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Text('Are you sure you want to logout?'),
                                               Container(
  padding: EdgeInsets.all(2), // Adjust padding for border width
  decoration: BoxDecoration(
    color: Colors.white,
    shape: BoxShape.circle,
    border: Border.all(color: Colors.white,
    
      width: 20, // Border width
    ),
  ),
  child: CircleAvatar(
backgroundImage: AssetImage('assets/images/pic2.png'),
  ),
                                               ),
                          SizedBox(height: 30),
                          Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Container(
      width: 100, // Adjust width as needed
      height: 50, // Adjust height as needed
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Colors.blue),
          ),
        ),
        child: Text(
          'No',
          style: TextStyle(color: Colors.blue),
        ),
      ),
    ),
    Container(
      width: 100, // Adjust width as needed
      height: 50, // Adjust height as needed
      child: TextButton(
        onPressed: () {
          // Dismiss the dialog
          Navigator.of(context).pop();
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          'Yes',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  ],
),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                'Logout',
                style: TextStyle(
                    color: Colors.red, fontWeight: FontWeight.bold),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              tileColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
