// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:06:09 2024

// (in-package diagnostic_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'DiagnosticStatus.dart';

//-----------------------------------------------------------

class DiagnosticArray extends RosMessage<DiagnosticArray> {
  Header header;

  List<DiagnosticStatus> status;

  static DiagnosticArray $prototype = DiagnosticArray();
  DiagnosticArray({ 
    Header? header,
    List<DiagnosticStatus>? status,
  }):
  this.header = header ?? Header(),
  this.status = status ?? [];

  @override
  DiagnosticArray call({ 
    Header? header,
    List<DiagnosticStatus>? status,
  }) => DiagnosticArray(
  header: header,
  status: status,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type DiagnosticArray
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [status]
    // Serialize the length for message field [status]
    writer.writeUint32(status.length);
    status.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  DiagnosticArray deserialize(ByteDataReader reader) {
    //deserializes a message object of type DiagnosticArray
    final data = DiagnosticArray();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
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
    length += header.getMessageSize();
    status.forEach((val) {
      length += val.getMessageSize();
    });
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'diagnostic_msgs/DiagnosticArray';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '60810da900de1dd6ddd437c3503511da';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This message is used to send diagnostic information about the state of the robot
Header header #for timestamp
DiagnosticStatus[] status # an array of components being reported on
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

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

