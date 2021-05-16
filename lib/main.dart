import 'package:cars/Stateful/MyRequests.dart';
import 'package:cars/Stateful/Search%20Results.dart';
import 'package:flutter/material.dart';


void main() {

  runApp(
      MaterialApp(
        initialRoute: '/begin',
        routes:{
          '/begin':(context)=>MyRequests(),

        },
      ));
}
