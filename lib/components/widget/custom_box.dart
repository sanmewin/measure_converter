import 'package:flutter/material.dart';

Container customBox(var dropdwon) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black54),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Center(child: dropdwon),
    );
  }
