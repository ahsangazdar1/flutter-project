import 'package:flutter/material.dart';

class Edit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "YAZZME",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0), // Added padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align children to the left
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: height * 0.08,
                  child: Image.asset('assets/images/pic1.png'),
                ),
                Row(
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        color: Color.fromRGBO(20, 23, 24, 1),
                        fontSize: width * 0.032,
                      ),
                      softWrap: false,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.008,
                ),
                TextField(
                  readOnly: true,
                  onTap: () {},
                  style: TextStyle(fontSize: width * 0.04),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.009,
                      horizontal: MediaQuery.of(context).size.height * 0.015,
                    ),
                    labelStyle: TextStyle(fontSize: width * 0.04),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                    ),
                    hintText: 'Ahsan gazdar',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Color.fromRGBO(192, 213, 210, 1),
                      ),
                      borderRadius: BorderRadius.circular(width * 0.02),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'E-Mail',
                      style: TextStyle(
                        color: Color.fromRGBO(20, 23, 24, 1),
                        fontSize: width * 0.032,
                      ),
                      softWrap: false,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.008,
                ),
                TextField(
                  readOnly: true,
                  onTap: () {},
                  style: TextStyle(fontSize: width * 0.04),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.009,
                      horizontal: MediaQuery.of(context).size.height * 0.015,
                    ),
                    labelStyle: TextStyle(fontSize: width * 0.04),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                    ),
                    hintText: 'Ahsangazdar@gmain.com',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(width * 0.02),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Phone number',
                      style: TextStyle(
                        color: Color.fromRGBO(20, 23, 24, 1),
                        fontSize: width * 0.032,
                      ),
                      softWrap: false,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.008,
                ),
                TextField(
                  onTap: () {},
                  style: TextStyle(fontSize: width * 0.04),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.009,
                      horizontal: MediaQuery.of(context).size.height * 0.015,
                    ),
                    labelStyle: TextStyle(fontSize: width * 0.04),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                    ),
                    hintText: '030987123',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Color.fromRGBO(192, 213, 210, 1),
                      ),
                      borderRadius: BorderRadius.circular(width * 0.02),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Country',
                      style: TextStyle(
                        color: Color.fromRGBO(20, 23, 24, 1),
                        fontSize: width * 0.032,
                      ),
                      softWrap: false,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.008,
                ),
                TextField(
                  readOnly: true,
                  onTap: () {},
                  style: TextStyle(fontSize: width * 0.04),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.009,
                      horizontal: MediaQuery.of(context).size.height * 0.015,
                    ),
                    labelStyle: TextStyle(fontSize: width * 0.04),
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                    ),
                    hintText: 'UAE',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Color.fromRGBO(192, 213, 210, 1),
                      ),
                      borderRadius: BorderRadius.circular(width * 0.02),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'City',
                      style: TextStyle(
                        color: Color.fromRGBO(20, 23, 24, 1),
                        fontSize: width * 0.032,
                      ),
                      softWrap: false,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.008,
                ),
                TextField(
                  readOnly: true,
                  onTap: () {},
                  style: TextStyle(fontSize: width * 0.04),
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.009,
                      horizontal: MediaQuery.of(context).size.height * 0.015,
                    ),
                    labelStyle: TextStyle(fontSize: width * 0.04),
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                    ),
                    hintText: 'Sharjaha',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Color.fromRGBO(192, 213, 210, 1),
                      ),
                      borderRadius: BorderRadius.circular(width * 0.02),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                  width: 200,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Save charge')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
