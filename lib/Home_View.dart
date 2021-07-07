import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'Trip.dart';
class Homeview extends StatelessWidget {

  final List<trip> _triptlist =[
    trip("New Yourk", DateTime.now(),DateTime.now(), 200, "Car"),
    trip("Washangton D C", DateTime.now(),DateTime.now(), 100, "Car"),
    trip("Boston", DateTime.now(),DateTime.now(), 300, "Car"),
    trip("Auston", DateTime.now(),DateTime.now(), 150, "Car"),
    trip("New Yourk", DateTime.now(),DateTime.now(), 50, "Car"),

  ];

  @override
  Widget build(BuildContext context) {

    return Container(
      child: new ListView.builder(
          itemCount: _triptlist.length,
          itemBuilder:(BuildContext context,int index)=>buildtripcard(context,index),



      ),
    );
  }
  Widget buildtripcard(BuildContext context,int index)
  {

    final trip = _triptlist[index];
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: Column(

             children: [
               Row(
                 children: [
                   Text(trip.title),
                 ],
               ),
               Row(
                 children: [
                   Text("${DateFormat('dd/MM/yyyy').format(trip.starttime).toString()}"" - ${DateFormat('dd/MM/yyyy').format(trip.endtime).toString()}"),
                   Divider(),

                 ],
               ),
               Row(
                 children: [
                   Text(trip.budget.toString()),
                   Spacer(),
                   Text(trip.traveltype),
                 ],
               )

             ],

          ),
        ),
      ),
    );
  }
}