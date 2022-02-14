// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height / 5,
      child: Stack(
        children: [
          Container(
            width: width,
            height: height / 7,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 15,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 50, left: 10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("Your image here"),
                    radius: 25.0,
                  ),
                ),
                Expanded(child: Container()),
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: IconButton(
                      onPressed: () {
                        
                      },
                      icon: Icon(
                        Icons.notification_add,
                        color: Colors.white,
                        size: 30,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: IconButton(
                      onPressed: () {
                        
                      },
                      icon: Icon(
                        Icons.refresh,
                        color: Colors.white,
                        size: 30,
                      )),
                ),
              ],
            ),
          ),
          Positioned(
            top: 65,
            left: 30,
            child: Container(
              width: width / 1.2,
              height: height / 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.indigo[50],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 15,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "MY EXPENSES",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
