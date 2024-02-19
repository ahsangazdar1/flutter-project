import 'dart:html';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class search extends StatelessWidget {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    Center(child: Text('Page 1')),
    Center(child: Text('Page 2')),
    Center(child: Text('Page 3')),
  ];

  get title => null;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        
  backgroundColor: Colors.grey.shade300,
 appBar: AppBar(
  backgroundColor: Colors.white,
  title: Text(
    "YAZZME",
    style: TextStyle(
      color: Colors.black,
      fontSize: 22.0,
      fontWeight: FontWeight.bold,
    ),
  ),
  leading: IconButton(
    icon: Icon(
      Icons.menu,
      color: Colors.black,
    ),
    onPressed: () {

    },
  ),
  centerTitle: true,
  actions: <Widget>[
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: Icon(
        Icons.notifications,
        color: Colors.black,
      ),
    ),
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {
        },
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/pic6.png'),
          radius: 10,
       
        ),

      ),
    ),
  ],
),

 body: Column(
  children: [
    Container(
      margin: EdgeInsets.only(bottom: 10, top: 10,left: 30,right: 30),
                  width: Get.width,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                  ),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/pic7.png'),
              backgroundColor: Colors.white,
            ),
            title: Text(
              'Audi',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.calendar_month, color: Colors.red,size: 10,),
              
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  'Feb 16 - 11:30AM',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 10,
                    fontWeight: FontWeight.w300
                  
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 15)),
              Text('Audi ',style: TextStyle(
                fontSize: 18.26,
                fontWeight: FontWeight.w600
              ),
              ),
              Padding(padding: EdgeInsets.only(left: 5)),
              Text('A4 ',style: TextStyle(
                fontSize: 18.26,
                fontWeight: FontWeight.w600
              ),
              ),
              Padding(padding: EdgeInsets.only(left: 5)),
              Text('(2022)',style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.w300
              ),)
            ],
          ),
        SizedBox(height: 10,),
Padding(
  padding: EdgeInsets.only(left: 15.0), 
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('status',style: TextStyle(
        color: Colors.grey
      ),),
      Padding(
        padding: EdgeInsets.only(left: 10.0), 
        child: Text(
          'New',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 10,
          ),
        ),
      ),
    ],
  ),
),
SizedBox(height: 5,),
Padding(
  padding: EdgeInsets.only(left: 15.0), 
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Email'),
      Text(
        'ahsangazdar@gmail.com',
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400
        ),
      ),
    ],
  ),
),
SizedBox(height: 5,),
Padding(
  padding: EdgeInsets.only(left: 15.0), 
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Phone number'),
      Text(
        '+971 561318425',
        style: TextStyle(
          fontSize: 10,
        ),
      ),
    ],
  ),
),
SizedBox(height: 10,),
Padding(
  padding: EdgeInsets.only(left: 13.0), 
  child: Row(  crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(Icons.location_on,size: 20,),
      Padding(padding: EdgeInsets.only(left: 10.0),),
      Expanded(
        child: Text(
          'Abu Dhabi City, Abu Dhabi',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.grey
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
         style: ElevatedButton.styleFrom(
             primary: Color.fromRGBO(118, 189,232, 1,), 
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            ),
            minimumSize: Size(150, 50), 
                              ),
        child: Text('Add cart',style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w300
        ),),
      ),
    ],
  ),
),

        ],
      ),
    ),
    SizedBox(height: 10),
    // second container
    Container(
  margin: EdgeInsets.only(bottom: 10, top: 10,left: 10,right: 10),
                  width: Get.width,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                  ),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/pic7.png'),
            ),
            title: Text(
              '',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.calendar_month, color: Colors.red,size: 10,),
              
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  'Feb 16 - 11:30AM',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 10,
                    fontWeight: FontWeight.w300
                  
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 15)),
              Text('Audi A4',style: TextStyle(
                fontSize: 18.26,
                fontWeight: FontWeight.w600
              ),
              ),
              Text('(2022)',style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.w300
              ),)
            ],
          ),
        SizedBox(height: 10,),
Padding(
  padding: EdgeInsets.only(left: 15.0), 
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('status'),
      Padding(
        padding: EdgeInsets.only(left: 10.0), 
        child: Text(
          'New',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 10,
          ),
        ),
      ),
    ],
  ),
),
SizedBox(height: 3,),
Padding(
  padding: EdgeInsets.only(left: 15.0), 
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Email'),
      Text(
        'ahsangazdar@gmail.com',
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400
        ),
      ),
    ],
  ),
),
SizedBox(height: 3,),
Padding(
  padding: EdgeInsets.only(left: 15.0), 
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Phone number'),
      Text(
        '+971 561318425',
        style: TextStyle(
          fontSize: 10,
        ),
      ),
    ],
  ),
),
SizedBox(height: 3,),
Padding(
  padding: EdgeInsets.only(left: 13.0), 
  child: Row(
    children: [
      Icon(Icons.location_on),
      Padding(padding: EdgeInsets.only(left: 10.0),),
      Expanded(
        child: Text(
          'Abu Dhabi City, Abu Dhabi',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.grey
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
         style: ElevatedButton.styleFrom(
                                primary: Colors.lightBlue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(color: Colors.blue),
                                ),
                                 minimumSize: Size(150, 50), 
                              ),
        child: Text('Add cart',style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w300
        ),),
      ),
    ],
  ),
),

        ],
      ),
    ),
    SizedBox(height: 10), // Add some space between containers
    // third container
    Container(
     margin: EdgeInsets.only(bottom: 10, top: 10,left: 10,right: 10),
                  width: Get.width,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                  ),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/pic7.png'),
            ),
            title: Text(
              'BMW',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.calendar_month, color: Colors.red,size: 10,),
              
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  'Feb 16 - 11:30AM',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 10,
                    fontWeight: FontWeight.w300
                  
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 15)),
              Text('BMW 740',style: TextStyle(
                fontSize: 18.26,
                fontWeight: FontWeight.w600
              ),
              ),
              Text('(2022)',style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.w300
              ),)
            ],
          ),
        SizedBox(height: 10,),
Padding(
  padding: EdgeInsets.only(left: 15.0), 
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('status'),
      Padding(
        padding: EdgeInsets.only(left: 10.0), 
        child: Text(
          'New',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 10,
          ),
        ),
      ),
    ],
  ),
),
SizedBox(height: 3,),
Padding(
  padding: EdgeInsets.only(left: 15.0), 
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Email'),
      Text(
        'ahsangazdar@gmail.com',
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400
        ),
      ),
    ],
  ),
),
SizedBox(height: 3,),
Padding(
  padding: EdgeInsets.only(left: 15.0), 
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Phone number'),
      Text(
        '+971 561318425',
        style: TextStyle(
          fontSize: 10,
        ),
      ),
    ],
  ),
),
SizedBox(height: 3,),
Padding(
  padding: EdgeInsets.only(left: 13.0), 
  child: Row(
    children: [
      Icon(Icons.location_on),
      Padding(padding: EdgeInsets.only(left: 10.0),),
      Expanded(
        child: Text(
          'Abu Dhabi City, Abu Dhabi',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.grey
          ),
        ),
      ),
      ElevatedButton(
        onPressed: () {},
         style: ElevatedButton.styleFrom(
                                primary: Colors.lightBlue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(color: Colors.blue),
                                ),
                                 minimumSize: Size(150, 50), 
                              ),
        child: Text('Add cart',style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w300
        ),),
      ),
    ],
  ),
),

        ],
      ),
    ),
  ],
),
        

        
        ),
        
        );
    
    
  }
}


