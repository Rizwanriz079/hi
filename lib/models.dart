import 'dart:convert';
import 'package:dio/dio.dart';

class Call {
  final String callId;
  final String queryId;
  final String customerId;
  final String agentId;
  final String datetime;
  final int duration;
  final String desposition;
  final String reasonNotConnected;
  final double orderAmount;
  final String outcome;
  final String startTime;
  final int phoneNumber;
  final String callType;

  Call({
    required this.callId,
    required this.queryId,
    required this.customerId,
    required this.agentId,
    required this.datetime,
    required this.duration,
    required this.desposition,
    required this.reasonNotConnected,
    required this.orderAmount,
    required this.outcome,
    required this.startTime,
    required this.phoneNumber,
    required this.callType,
  });

  factory Call.fromJson(Map<String, dynamic> json) {
    return Call(
      callId: json['callId'],
      queryId: json['query_id'],
      customerId: json['customer_id'],
      agentId: json['agent_id'],
      datetime: json['datetime'],
      duration: json['duration'],
      desposition: json['desposition'],
      reasonNotConnected: json['reason_not_connected'],
      orderAmount: json['order_amount'],
      outcome: json['outcome'],
      startTime: json['startTime'],
      phoneNumber: json['phoneNumber'],
      callType: json['callType'],
    );
  }
}


class CallApiService {
  final Dio _dio = Dio();
  final String baseUrl = 'https://crm-backend-wqu3.onrender.com/calls';

  // Fetch Calls (GET)
  Future<List<Call>> fetchCalls() async {
    try {
      final response = await _dio.get('$baseUrl/getCalls');

      if (response.statusCode == 200) {
        List<dynamic> callsJson = response.data;
        return callsJson.map((json) => Call.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load calls');
      }
    } catch (e) {
      throw Exception('Error fetching calls: $e');
    }
  }

  // Create a Call (POST)
  Future<void> createCall(Call call) async {
    try {
      final response = await _dio.post(
        '$baseUrl/calls',
        options: Options(headers: {
          'Content-Type': 'application/json',
        }),
        data: jsonEncode({
          "query_id": call.queryId,
          "customer_id": call.customerId,
          "agent_id": call.agentId,
          "datetime": call.datetime,
          "duration": call.duration,
          "isMissedCall": false,
          "outcome": call.outcome,
          "startTime": call.startTime,
          "phoneNumber": call.phoneNumber,
          "callRecording": ""
        }),
      );

      if (response.statusCode != 201) {
        throw Exception('Failed to create call');
      }
    } catch (e) {
      throw Exception('Error creating call: $e');
    }
  }

  // Update a Call (PUT)
  Future<void> updateCall(String callId, Call call) async {
    try {
      final response = await _dio.put(
        '$baseUrl/calls/$callId',
        options: Options(headers: {
          'Content-Type': 'application/json',
        }),
        data: jsonEncode({
          "query_id": call.queryId,
          "customer_id": call.customerId,
          "agent_id": call.agentId,
          "datetime": call.datetime,
          "duration": call.duration,
          "isMissedCall": false,
          "outcome": call.outcome,
          "startTime": call.startTime,
          "phoneNumber": call.phoneNumber,
          "callRecording": ""
        }),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to update call');
      }
    } catch (e) {
      throw Exception('Error updating call: $e');
    }
  }

  // Delete a Call (DELETE)
  Future<void> deleteCall(String callId) async {
    try {
      final response = await _dio.delete('$baseUrl/calls/$callId');

      if (response.statusCode != 200) {
        throw Exception('Failed to delete call');
      }
    } catch (e) {
      throw Exception('Error deleting call: $e');
    }
  }
}
