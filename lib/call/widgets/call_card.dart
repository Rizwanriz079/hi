import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallCard extends StatelessWidget {
  final String phone_number;
  final String call_id;
  final String call_type;
  final String duration;
  final String date_time;
  final bool checkbox_value;

  CallCard(
      {super.key,
      required this.phone_number,
      required this.call_id,
      required this.call_type,
      required this.duration,
      required this.date_time,
      required this.checkbox_value});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 223, 222, 247),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 228, 226, 226),
            offset: Offset(7, 7),
            spreadRadius: 3,
            blurRadius: 7,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              margin: EdgeInsets.only(left: 30),
              child: Checkbox(
                value: checkbox_value,
                onChanged: (value) {},
              )),
          Container(
            child: Text(call_id,style: TextStyle(fontWeight: FontWeight.bold),),
            width: 150,
            alignment: Alignment.center,
          ),
          Container(
            child: Text(
              phone_number,style: TextStyle(fontWeight: FontWeight.bold)
            ),
            width: 150,
            alignment: Alignment.center,
          ),
          Container(
            child: Text(call_type,style: TextStyle(fontWeight: FontWeight.bold)),
            width: 150,
            alignment: Alignment.center,
          ),
          Container(
            child: Text(duration,style: TextStyle(fontWeight: FontWeight.bold)),
            width: 150,
            alignment: Alignment.center,
          ),
          Container(
            child: Text(date_time,style: TextStyle(fontWeight: FontWeight.bold)),
            width: 250,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
