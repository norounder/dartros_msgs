// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:06:09 2024

// (in-package diagnostic_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'KeyValue.dart';

//-----------------------------------------------------------

class DiagnosticStatus extends RosMessage<DiagnosticStatus> {
  int level;

  String name;

  String message;

  String hardware_id;

  List<KeyValue> values;

  static DiagnosticStatus $prototype = DiagnosticStatus();
  DiagnosticStatus({ 
    int? level,
    String? name,
    String? message,
    String? hardware_id,
    List<KeyValue>? values,
  }):
  this.level = level ?? 0,
  this.name = name ?? '',
  this.message = message ?? '',
  this.hardware_id = hardware_id ?? '',
  this.values = values ?? [];

  @override
  DiagnosticStatus call({ 
    int? level,
    String? name,
    String? message,
    String? hardware_id,
    List<KeyValue>? values,
  }) => DiagnosticStatus(
  level: level,
  name: name,
  message: message,
  hardware_id: hardware_id,
  values: values,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type DiagnosticStatus
    // Serialize message field [level]
    writer.writeUint8(level);
    // Serialize message field [name]
    writer.writeString(name);
    // Serialize message field [message]
    writer.writeString(message);
    // Serialize message field [hardware_id]
    writer.writeString(hardware_id);
    // Serialize message field [values]
    // Serialize the length for message field [values]
    writer.writeUint32(values.length);
    values.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  DiagnosticStatus deserialize(ByteDataReader reader) {
    //deserializes a message object of type DiagnosticStatus
    final data = DiagnosticStatus();
    // Deserialize message field [level]
    data.level = reader.readUint8();
    // Deserialize message field [name]
    data.name = reader.readString();
    // Deserialize message field [message]
    data.message = reader.readString();
    // Deserialize message field [hardware_id]
    data.hardware_id = reader.readString();
    // Deserialize message field [values]
    {
      // Deserialize array length for message field [values]
      final len = reader.readInt32();
      data.values = List.generate(len, (_) => KeyValue.$prototype.deserialize(reader));
    }
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(name).length;
    length += utf8.encode(message).length;
    length += utf8.encode(hardware_id).length;
    values.forEach((val) {
      length += val.getMessageSize();
    });
    return length + 17;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'diagnostic_msgs/DiagnosticStatus';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd0ce08bc6e5ba34c7754f563a9cabaf1';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This message holds the status of an individual component of the robot.
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

// Constants for message
  static const int OK = 0;
  static const int WARN = 1;
  static const int ERROR = 2;
  static const int STALE = 3;

}

