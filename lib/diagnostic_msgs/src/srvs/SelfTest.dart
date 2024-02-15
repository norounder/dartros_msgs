// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:06:09 2024

// (in-package diagnostic_msgs.srv)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

import '../msgs/DiagnosticStatus.dart';

//-----------------------------------------------------------

class SelfTestRequest extends RosMessage<SelfTestRequest> {
  static SelfTestRequest $prototype = SelfTestRequest();
  SelfTestRequest();

  @override
  SelfTestRequest call() => SelfTestRequest();

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type SelfTestRequest
  }

  @override
  SelfTestRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type SelfTestRequest
    final data = SelfTestRequest();
    return data;
  }

  int getMessageSize() {
    return 0;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'diagnostic_msgs/SelfTestRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''
''';
  }

}

class SelfTestResponse extends RosMessage<SelfTestResponse> {
  String id;

  int passed;

  List<DiagnosticStatus> status;

  static SelfTestResponse $prototype = SelfTestResponse();
  SelfTestResponse({ 
    String? id,
    int? passed,
    List<DiagnosticStatus>? status,
  }):
  this.id = id ?? '',
  this.passed = passed ?? 0,
  this.status = status ?? [];

  @override
  SelfTestResponse call({ 
    String? id,
    int? passed,
    List<DiagnosticStatus>? status,
  }) => SelfTestResponse(
  id: id,
  passed: passed,
  status: status,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type SelfTestResponse
    // Serialize message field [id]
    writer.writeString(id);
    // Serialize message field [passed]
    writer.writeUint8(passed);
    // Serialize message field [status]
    // Serialize the length for message field [status]
    writer.writeUint32(status.length);
    status.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  SelfTestResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type SelfTestResponse
    final data = SelfTestResponse();
    // Deserialize message field [id]
    data.id = reader.readString();
    // Deserialize message field [passed]
    data.passed = reader.readUint8();
    // Deserialize message field [status]
    {
      // Deserialize array length for message field [status]
      final len = reader.readInt32();
      data.status = List.generate(len, (_) => DiagnosticStatus.$prototype.deserialize(reader));
    }
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += utf8.encode(id).length;
    status.forEach((val) {
      length += val.getMessageSize();
    });
    return length + 9;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'diagnostic_msgs/SelfTestResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'ac21b1bab7ab17546986536c22eb34e9';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''string id
byte passed
DiagnosticStatus[] status


================================================================================
MSG: diagnostic_msgs/DiagnosticStatus
# This message holds the status of an individual component of the robot.
# 

# Possible levels of operations
byte OK=0
byte WARN=1
byte ERROR=2
byte STALE=3

byte level # level of operation enumerated above 
string name # a description of the test/component reporting
string message # a description of the status
string hardware_id # a hardware unique string
KeyValue[] values # an array of values associated with the status


================================================================================
MSG: diagnostic_msgs/KeyValue
string key # what to label this value when viewing
string value # a value to track over time

''';
  }

}

class SelfTest extends RosServiceMessage<SelfTestRequest, SelfTestResponse> {
  static final $prototype = SelfTest();
  @override
  SelfTestRequest get request => SelfTestRequest.$prototype;
  @override
  SelfTestResponse get response => SelfTestResponse.$prototype;
  @override
  String get md5sum => 'ac21b1bab7ab17546986536c22eb34e9';
  @override
  String get fullType => 'diagnostic_msgs/SelfTest';
  @override
  String get messageDefinition => request.messageDefinition + "---" + response.messageDefinition;
}
