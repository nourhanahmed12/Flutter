import 'package:cars/Color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget shipTime(BuildContext context,String time) {
  return Container(
    width: 50,
    height: 14,
    decoration: BoxDecoration(
      color: AppColors.lightblue,
      borderRadius: BorderRadius.circular(5),

    ),

    child: FittedBox(
      child: Text(
          time,
          style:TextStyle(
            color: AppColors.blue,
            fontSize: 10,

          )
      ),
    ),

  );
}