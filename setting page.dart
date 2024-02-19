
import 'package:e6/term&condition.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class setting extends StatelessWidget {
bool isToggled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: 
          Text("Setting",style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),
        ),
          
        ) 
      ),
      body: 
      ListView(
        children: [
           ListTile(
        title: Text('Change password',style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        ),
        trailing: Icon(Icons.arrow_forward)

      ),
      
      ListTile(
        title: Text('Notification',style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        ),
        trailing:  Icon(Icons.notification_add),
      ),
      ListTile(
        title: Text('Term & condition',style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        ),
        trailing:  Icon(Icons.arrow_forward),
        onTap: (){
            Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => term()),
        );
        },
      )
        ],
      )
      
    );
  }
  }