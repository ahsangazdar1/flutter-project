
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class privacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              "Privacy & Support",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )),
      body: Container(
        margin: EdgeInsets.only(bottom: 10, top: 10),
        width: Get.width,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'Lorem ipsum dolor sit amet consectetur. Nulla potenti montes vitae ac ornare. Pulvinar urna elementum sed consectetur dictumst et. Pretium sapien mauris amet pharetra a pharetra. Dolor tellus sed quam dui. Ante vulputate semper sit velit ac auctor. Morbi orci tempor viverra pulvinar.',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'In sit sed lobortis ullamcorper mi vitae.Pellentesque vestibulum at massa posuere mollis. Nunc sapien senectus quis sed eget vel quis curabitur. Nulla volutpat mollis in ut sed. Gravida nec mattis fames id ultrices elementum pharetra montes. Nulla sed vulputate amet tempor gravida cursus. Ultrices quis ornare orci adipiscing. Quam egestas enim sem sed sed proin bibendum. Lectus elit et pellentesque ut. Elit id mattis id vel neque arcu massa et amet. Dolor ut integer nisl sagittis placerat turpis commodo id sagittis. In quisque tincidunt id vulputate at orci. Aliquam bibendum lectus amet volutpat. Lacus aliquet eu hendrerit eget.',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Egestas nisi rutrum interdum pretium integer amet integer. Sollicitudin molestie mattis dui pharetra sed sed rhoncus dui tempor. Ullamcorper bibendum blandit tempor porttitor lorem lectus sit at egestas. Commodo justo dolor aenean ut libero nisi vitae quis. At dui non et ipsum. Nisl nibh congue massa euismod nunc lectus aliquam ut vitae. Dictumst quisque diam ac sapien lorem sem bibendum consectetur. Interdum dui habitant morbi et cum. Praesent amet sed mauris turpis faucibus posuere in. In semper enim sit quisque sit amet. Eget enim dui est mi cum tellus. Tristique maecenas feugiat.',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
