  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar customAppBar() {
    return AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Unit Converter",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xffa5be9f),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(CupertinoIcons.info_circle_fill),
          ),
        ],
      );
  }