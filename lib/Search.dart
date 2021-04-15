import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_outlined),
          color: Colors.black,
        ),
        title: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0), // shadow direction: bottom right
                )
              ],
              color: Colors.white70,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              )),
          child: TextField(
            textAlign: TextAlign.center,
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(30.0, 15.0, 20.0, 15.0),
              prefixIcon: Icon(Icons.search),
              hintText: 'Search',
              hintStyle: TextStyle(fontSize: 16, color: Colors.blue),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: SizedBox(
          height: 150,
          width: 350,
          child: Card(
            color: Colors.white54,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 2,
            child: Row(
              children: [
                Image.asset(
                  'assets/images/Headphone.png',
                ),
                SizedBox(
                  width: 4,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "I ball headphone",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      '10 Days Left',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Reminder",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        FlutterSwitch(
                          width: 48,
                          height: 25,
                          valueFontSize: 25.0,
                          toggleSize: 20.0,
                          value: status,
                          activeSwitchBorder: Border.all(
                            color: Colors.white,
                            width: 3.0,
                          ),
                          inactiveSwitchBorder: Border.all(
                            color: Colors.white,
                            width: 3.0,
                          ),
                          borderRadius: 30.0,
                          inactiveToggleColor: Colors.blue,
                          activeToggleColor: Colors.blueAccent,
                          inactiveColor: Colors.black12,
                          activeColor: Colors.black12,
                          padding: 0.0,
                          showOnOff: false,
                          onToggle: (val) {
                            setState(() {
                              status = val;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
