import 'package:flutter/material.dart';

class CustomDecoration{
  InputDecoration customTFDecoration() {
    return const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.black)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: 'Please insert the measure to be changed',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ));
  }
}