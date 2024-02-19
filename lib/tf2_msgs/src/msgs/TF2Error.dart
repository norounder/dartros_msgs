// Auto-generated. Do not edit!

// Updated: Mon Feb 19 17:02:54 2024

// (in-package tf2_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class TF2Error extends RosMessage<TF2Error> {
  int error;

  String error_string;

  static TF2Error $prototype = TF2Error();
  TF2Error({ 
    int? error,
    String? error_string,
  }):
  this.error = error ?? 0,
  this.error_string = error_string ?? '';

  @override
  TF2Error call({ 
    int? error,
    String? error_string,
  }) => TF2Error(
  error: error,
  error_string: error_string,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type TF2Error
    // Serialize message field [error]
    writer.writeUint8(error);
    // Serialize message field [error_string]
    writer.writeString(error_string);
  }

  @override
  TF2Error deserialize(ByteDataReader reader) {
    //deserializes a message object of type TF2Error
    final data = TF2Error();
    // Deserialize message field [error]
    data.error = reader.readUint8();
    // Deserialize message field [error_string]
    data.error_string = reader.readString();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(error_string).length;
    return length + 5;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'tf2_msgs/TF2Error';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'bc6848fd6fd750c92e38575618a4917d';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''uint8 NO_ERROR = 0
uint8 LOOKUP_ERROR = 1
uint8 CONNECTIVITY_ERROR = 2
uint8 EXTRAPOLATION_ERROR = 3
uint8 INVALID_ARGUMENT_ERROR = 4
uint8 TIMEOUT_ERROR = 5
uint8 TRANSFORM_ERROR = 6

uint8 error
string error_string

''';
  }

// Constants for message
  static const int NO_ERROR = 0;
  static const int LOOKUP_ERROR = 1;
  static const int CONNECTIVITY_ERROR = 2;
  static const int EXTRAPOLATION_ERROR = 3;
  static const int INVALID_ARGUMENT_ERROR = 4;
  static const int TIMEOUT_ERROR = 5;
  static const int TRANSFORM_ERROR = 6;

}

