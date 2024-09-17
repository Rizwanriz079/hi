class CallModel {
  bool? isMissedCall;
  Null? callRecording;
  String? sId;
  String? callId;
  String? queryId;
  String? customerId;
  String? agentId;
  String? datetime;
  int? duration;
  String? desposition;
  String? reasonNotConnected;
  double? orderAmount;
  String? outcome;
  String? startTime;
  String? phoneNumber;
  String? callType;
  int? iV;

  CallModel(
      {this.isMissedCall,
        this.callRecording,
        this.sId,
        this.callId,
        this.queryId,
        this.customerId,
        this.agentId,
        this.datetime,
        this.duration,
        this.desposition,
        this.reasonNotConnected,
        this.orderAmount,
        this.outcome,
        this.startTime,
        this.phoneNumber,
        this.callType,
        this.iV});

  CallModel.fromJson(Map<String, dynamic> json) {
    isMissedCall = json['isMissedCall'];
    callRecording = json['callRecording'];
    sId = json['_id'];
    callId = json['callId'];
    queryId = json['query_id'];
    customerId = json['customer_id'];
    agentId = json['agent_id'];
    datetime = json['datetime'];
    duration = json['duration'];
    desposition = json['desposition'];
    reasonNotConnected = json['reason_not_connected'];
    orderAmount = json['order_amount'];
    outcome = json['outcome'];
    startTime = json['startTime'];
    phoneNumber = json['phoneNumber'];
    callType = json['callType'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isMissedCall'] = this.isMissedCall;
    data['callRecording'] = this.callRecording;
    data['_id'] = this.sId;
    data['callId'] = this.callId;
    data['query_id'] = this.queryId;
    data['customer_id'] = this.customerId;
    data['agent_id'] = this.agentId;
    data['datetime'] = this.datetime;
    data['duration'] = this.duration;
    data['desposition'] = this.desposition;
    data['reason_not_connected'] = this.reasonNotConnected;
    data['order_amount'] = this.orderAmount;
    data['outcome'] = this.outcome;
    data['startTime'] = this.startTime;
    data['phoneNumber'] = this.phoneNumber;
    data['callType'] = this.callType;
    data['__v'] = this.iV;
    return data;
    }
}