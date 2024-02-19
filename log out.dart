
import 'package:e6/term&condition.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class log extends StatelessWidget {
bool isToggled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Text('Are you sure you want to logout',style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w700
                  ),),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Yes'),
                    ),
                    TextButton(
                      onPressed: () {
                      
                      },
                      child: Text('No'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Logout'),
        ),
      ),
    );
  }
}