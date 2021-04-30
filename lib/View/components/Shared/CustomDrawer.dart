import 'package:flutter/material.dart';
import 'package:upwork/View/Pages/TalentPages/MyStats.dart';
import 'package:upwork/View/Pages/TalentPages/Profile.dart';
import 'package:upwork/View/Pages/TalentPages/Reports.dart';
import 'package:upwork/View/Pages/TalentPages/Settings.dart';

import '../../../constanse.dart';
import 'CustomListTile.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: bgUpworkDark,
        child: ListView(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.only(top: 25, bottom: 20, left: 15),
              onTap: () {
                // Update the state of the app.
              },
              title: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    width: 60,
                    height: 60,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: ExactAssetImage("assets/img/06.jpg"),
                    ),
                  ),
                  Text(
                    'Freelancer Name',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            CustomListTile(
              firstIcon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              text: "Profile",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ));
              },
              secondIcon: false,
            ),
            CustomListTile(
              firstIcon: Icon(
                Icons.insert_chart_outlined,
                color: Colors.white,
              ),
              text: "My stats",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyStats(),
                    ));
              },
              secondIcon: false,
            ),
            CustomListTile(
              firstIcon: Icon(
                Icons.donut_large_outlined,
                color: Colors.white,
              ),
              text: "Reports",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Reports(),
                    ));
              },
              secondIcon: false,
            ),
            CustomListTile(
              firstIcon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              text: "Settings",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Settings(),
                    ));
              },
              secondIcon: false,
            ),
            CustomListTile(
              firstIcon: Icon(
                Icons.error,
                color: Colors.white,
              ),
              text: "Help",
              onTap: () {
                // Update the state of the app.
              },
              secondIcon: true,
            ),
            CustomListTile(
              firstIcon: Icon(
                Icons.help,
                color: Colors.white,
              ),
              text: "Support",
              onTap: () {
                // Update the state of the app.
              },
              secondIcon: true,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Version 1.35.0 (324)",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
