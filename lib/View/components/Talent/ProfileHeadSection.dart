import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:upwork/Models/UserData.dart';
import 'package:upwork/View/components/Shared/CustomIcon.dart';
import '../../../constanse.dart';

class ProfileHeadSection extends StatefulWidget {
  final dateFormart = new DateFormat('kk:mm:a');
  final UserDataModel user;
  ProfileHeadSection(this.user);
  @override
  _ProfileHeadSectionState createState() => _ProfileHeadSectionState();
}

class _ProfileHeadSectionState extends State<ProfileHeadSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgUpworkSection,
      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    Positioned(
                      // child: Image.network(
                      //   widget.user.profilePhoto,
                      // ),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            ExactAssetImage("assets/img/default-avatar.jpg"),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      child: CustomIcon(Icons.mode_edit),
                    ),
                    Positioned(
                      right: 25,
                      bottom: 5,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: Color(0xff37a000),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                      child: Text(
                        widget.user.firstName + " " + widget.user.lastName,
                        // "sdsd",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.room,
                            size: 15,
                          ),
                          Text(
                            " " +
                                widget.user.location["city"] +
                                ", " +
                                widget.user.location["country"],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        widget.dateFormart.format(new DateTime.now()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.beenhere,
                            size: 15,
                            color: Color(0xFF1CAF9D),
                          ),
                          Text("RISING TALENT",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
