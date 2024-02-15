// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class NavSatStatus extends RosMessage<NavSatStatus> {
  int status;

  int service;

  static NavSatStatus $prototype = NavSatStatus();
  NavSatStatus({ 
    int? status,
    int? service,
  }):
  this.status = status ?? 0,
  this.service = service ?? 0;

  @override
  NavSatStatus call({ 
    int? status,
    int? service,
  }) => NavSatStatus(
  status: status,
  service: service,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type NavSatStatus
    // Serialize message field [status]
    writer.writeInt8(status);
    // Serialize message field [service]
    writer.writeUint16(service);
  }

  @override
  NavSatStatus deserialize(ByteDataReader reader) {
    //deserializes a message object of type NavSatStatus
    final data = NavSatStatus();
    // Deserialize message field [status]
    data.status = reader.readInt8();
    // Deserialize message field [service]
    data.service = reader.readUint16();
    return data;
  }

  int getMessageSize() {
    return 3;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/NavSatStatus';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '331cdbddfa4bc96ffc3b9ad98900a54c';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Navigation Satellite fix status for any Global Navigation Satellite System

# Whether to output an augmented fix is determined by both the fix
# type and the last time differential corrections were received.  A
# fix is valid when status >= STATUS_FIX.

int8 STATUS_NO_FIX =  -1        # unable to fix position
int8 STATUS_FIX =      0        # unaugmented fix
int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation
int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation

int8 status

# Bits defining which Global Navigation Satellite System signals were
# used by the receiver.

uint16 SERVICE_GPS =     1
uint16 SERVICE_GLONASS = 2
uint16 SERVICE_COMPASS = 4      # includes BeiDou.
uint16 SERVICE_GALILEO = 8

uint16 service

''';
  }

// Constants for message
  static const int STATUS_NO_FIX = -1;
  static const int STATUS_FIX = 0;
  static const int STATUS_SBAS_FIX = 1;
  static const int STATUS_GBAS_FIX = 2;
  static const int SERVICE_GPS = 1;
  static const int SERVICE_GLONASS = 2;
  static const int SERVICE_COMPASS = 4;
  static const int SERVICE_GALILEO = 8;

}

