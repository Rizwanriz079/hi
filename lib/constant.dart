import 'package:flutter/material.dart';
import 'dart:convert';

import 'models.dart';

const Color primaryColor = Colors.black;
const Color secondaryColor = Colors.white;
const Color greenColor = Colors.green;
const Color hintColor = Colors.grey;
const Color orange100 = Color(0xFFFFE0B2);
const Color red100 = Color(0xFFFFCDD2);

const TextStyle titleTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: primaryColor,
);

const TextStyle buttonTextStyle = TextStyle(
  color: primaryColor,
  fontWeight: FontWeight.bold,
);
const TextStyle buttonswTextStyle = TextStyle(
  color: primaryColor,
  fontWeight: FontWeight.w200,
);

const TextStyle userCountTextStyle = TextStyle(
  fontSize: 16,
  color: secondaryColor,
);


// call_service.dart

//
// class CallService {
//   final String baseUrl = 'https://crm-backend-wqu3.onrender.com/calls';
//
//   Future<List<Call>> fetchCallHistory() async {
//     final response = await http.get(Uri.parse('$baseUrl'));
//
//     if (response.statusCode == 200) {
//       final List<dynamic> data = json.decode(response.body);
//       return data.map((json) => Call.fromJson(json)).toList();
//
//     } else {
//       print(response.statusCode);
//       throw Exception('Failed to load call history');
//     }
//   }
// }

// custom_elevated_button.dart

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;
  final BorderSide borderSide;
  final bool isOutlined;

  CustomElevatedButton({
    required this.text,
    required this.onPressed,
    this.backgroundColor = Colors.deepPurpleAccent,
    this.textColor = Colors.white,
    this.borderSide = BorderSide.none,
    this.isOutlined = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor, backgroundColor: isOutlined ? Colors.white : backgroundColor,
        side: isOutlined ? borderSide : BorderSide.none,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}



class CustomChip extends StatelessWidget {
  final String label;
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;

  const CustomChip({
    Key? key,
    required this.label,
    required this.textColor,
    required this.backgroundColor,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: TextStyle(color: textColor),
      ),
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: borderColor),
      ),
    );
  }
}


