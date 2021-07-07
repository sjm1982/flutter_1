import 'package:flutter/material.dart';


class trip{

  final String title;
  final DateTime starttime;
  final DateTime endtime;
  final double budget;
  final String traveltype;

  trip(this.title,this.starttime,this.endtime,this.budget,this.traveltype);
}