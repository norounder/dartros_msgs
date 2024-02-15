// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class TimeReference extends RosMessage<TimeReference> {
  Header header;

  RosTime time_ref;

  String source;

  static TimeReference $prototype = TimeReference();
  TimeReference({ 
    Header? header,
    RosTime? time_ref,
    String? source,
  }):
  this.header = header ?? Header(),
  this.time_ref = time_ref ?? RosTime(secs: 0, nsecs: 0),
  this.source = source ?? '';

  @override
  TimeReference call({ 
    Header? header,
    RosTime? time_ref,
    String? source,
  }) => TimeReference(
  header: header,
  time_ref: time_ref,
  source: source,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type TimeReference
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [time_ref]
    writer.writeTime(time_ref);
    // Serialize message field [source]
    writer.writeString(source);
  }

  @override
  TimeReference deserialize(ByteDataReader reader) {
    //deserializes a message object of type TimeReference
    final data = TimeReference();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [time_ref]
    data.time_ref = reader.readTime();
    // Deserialize message field [source]
    data.source = reader.readString();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += utf8.encode(source).length;
    return length + 12;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/TimeReference';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'fded64a0265108ba86c3d38fb11c0c16';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Measurement from an external time source not actively synchronized with the system clock.

Header header    # stamp is system time for which measurement was valid
                 # frame_id is not used 

time   time_ref  # corresponding time from this external source
string source    # (optional) name of time source

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

''';
  }

}

