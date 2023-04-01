import 'package:flutter/material.dart';

class CallModel{
  final String name;
  final String time;
  final String avatar;
  final Icon callType;
  CallModel({required this.name,required this.time,required this.avatar,required this.callType});
  static Icon callReceived = Icon(Icons.call_received,color: Colors.green,size: 18,);
  static Icon callMissed = Icon(Icons.call_missed,color: Colors.red,size: 18,);
}

List<CallModel> callData =[
  CallModel(
    name: "sahib",
    time: "10: 45",
    callType : CallModel.callReceived,
    avatar: "images/sahib1.jpg",
  ),
  CallModel(
    name: "wazir",
    time: "05: 15",
    callType : CallModel.callMissed,
    avatar: "images/sahib3.jpg",
  ),
  CallModel(
    name: "arshad",
    time: "04: 25",
    callType : CallModel.callReceived,
    avatar: "images/sahib5.jpg",
  ),
  CallModel(
    name: "sahib",
    time: "10: 45",
    callType : CallModel.callReceived,
    avatar: "images/sahib1.jpg",
  ),
  CallModel(
    name: "wazir",
    time: "05: 15",
    callType : CallModel.callMissed,
    avatar: "images/sahib3.jpg",
  ),
  CallModel(
    name: "arshad",
    time: "04: 25",
    callType : CallModel.callReceived,
    avatar: "images/sahib5.jpg",
  ),
  CallModel(
    name: "sahib",
    time: "10: 45",
    callType : CallModel.callReceived,
    avatar: "images/sahib1.jpg",
  ),
  CallModel(
    name: "wazir",
    time: "05: 15",
    callType : CallModel.callMissed,
    avatar: "images/sahib3.jpg",
  ),
  CallModel(
    name: "arshad",
    time: "04: 25",
    callType : CallModel.callReceived,
    avatar: "images/sahib5.jpg",
  ),
  CallModel(
    name: "sahib",
    time: "10: 45",
    callType : CallModel.callMissed,
    avatar: "images/sahib1.jpg",
  ),
  CallModel(
    name: "sahib",
    time: "10: 45",
    callType : CallModel.callMissed,
    avatar: "images/sahib1.jpg",
  ),
  CallModel(
    name: "sahib",
    time: "10: 45",
    callType : CallModel.callMissed,
    avatar: "images/sahib1.jpg",
  ),
  CallModel(
    name: "sahib",
    time: "10: 45",
    callType : CallModel.callReceived,
    avatar: "images/sahib1.jpg",
  ),
  CallModel(
    name: "wazir",
    time: "05: 15",
    callType : CallModel.callMissed,
    avatar: "images/sahib3.jpg",
  ),
  CallModel(
    name: "arshad",
    time: "04: 25",
    callType : CallModel.callReceived,
    avatar: "images/sahib5.jpg",
  ),
  CallModel(
    name: "sahib",
    time: "10: 45",
    callType : CallModel.callMissed,
    avatar: "images/sahib1.jpg",
  ),
  CallModel(
    name: "sahib",
    time: "10: 45",
    callType : CallModel.callReceived,
    avatar: "images/sahib1.jpg",
  ),
  CallModel(
    name: "wazir",
    time: "05: 15",
    callType : CallModel.callMissed,
    avatar: "images/sahib3.jpg",
  ),
  CallModel(
    name: "arshad",
    time: "04: 25",
    callType : CallModel.callReceived,
    avatar: "images/sahib5.jpg",
  ),
  CallModel(
    name: "sahib",
    time: "10: 45",
    callType : CallModel.callMissed,
    avatar: "images/sahib1.jpg",
  ),
];




