// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'NavSatStatus.dart';

//-----------------------------------------------------------

class NavSatFix extends RosMessage<NavSatFix> {
  Header header;

  NavSatStatus status;

  double latitude;

  double longitude;

  double altitude;

  List<double> position_covariance;

  int position_covariance_type;

  static NavSatFix $prototype = NavSatFix();
  NavSatFix({ 
    Header? header,
    NavSatStatus? status,
    double? latitude,
    double? longitude,
    double? altitude,
    List<double>? position_covariance,
    int? position_covariance_type,
  }):
  this.header = header ?? Header(),
  this.status = status ?? NavSatStatus(),
  this.latitude = latitude ?? 0.0,
  this.longitude = longitude ?? 0.0,
  this.altitude = altitude ?? 0.0,
  this.position_covariance = position_covariance ?? List.generate(9, (_) => 0),
  this.position_covariance_type = position_covariance_type ?? 0;

  @override
  NavSatFix call({ 
    Header? header,
    NavSatStatus? status,
    double? latitude,
    double? longitude,
    double? altitude,
    List<double>? position_covariance,
    int? position_covariance_type,
  }) => NavSatFix(
  header: header,
  status: status,
  latitude: latitude,
  longitude: longitude,
  altitude: altitude,
  position_covariance: position_covariance,
  position_covariance_type: position_covariance_type,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type NavSatFix
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [status]
    status.serialize(writer);
    // Serialize message field [latitude]
    writer.writeFloat64(latitude);
    // Serialize message field [longitude]
    writer.writeFloat64(longitude);
    // Serialize message field [altitude]
    writer.writeFloat64(altitude);
    // Check that the constant length array field [position_covariance] has the right length
    if (position_covariance.length != 9) {
      throw Exception('Unable to serialize array field position_covariance - length must be 9');
    }
    // Serialize message field [position_covariance]
    writer.writeArray<double>(position_covariance, (val) => writer.writeFloat64(val), specArrayLen: 9);
    // Serialize message field [position_covariance_type]
    writer.writeUint8(position_covariance_type);
  }

  @override
  NavSatFix deserialize(ByteDataReader reader) {
    //deserializes a message object of type NavSatFix
    final data = NavSatFix();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [status]
    data.status = NavSatStatus.$prototype.deserialize(reader);
    // Deserialize message field [latitude]
    data.latitude = reader.readFloat64();
    // Deserialize message field [longitude]
    data.longitude = reader.readFloat64();
    // Deserialize message field [altitude]
    data.altitude = reader.readFloat64();
    // Deserialize message field [position_covariance]
    data.position_covariance = reader.readArray<double>(() => reader.readFloat64(), arrayLen: 9);
    // Deserialize message field [position_covariance_type]
    data.position_covariance_type = reader.readUint8();
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    return length + 100;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/NavSatFix';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '2d3a8cd499b9b4a0249fb98fd05cfa48';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Navigation Satellite fix for any Global Navigation Satellite System
#
# Specified using the WGS 84 reference ellipsoid

# header.stamp specifies the ROS time for this measurement (the
#        corresponding satellite time may be reported using the
#        sensor_msgs/TimeReference message).
#
# header.frame_id is the frame of reference reported by the satellite
#        receiver, usually the location of the antenna.  This is a
#        Euclidean frame relative to the vehicle, not a reference
#        ellipsoid.
Header header

# satellite fix status information
NavSatStatus status

# Latitude [degrees]. Positive is north of equator; negative is south.
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is west.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid
# (quiet NaN if no altitude is available).
float64 altitude

# Position covariance [m^2] defined relative to a tangential plane
# through the reported position. The components are East, North, and
# Up (ENU), in row-major order.
#
# Beware: this coordinate system exhibits singularities at the poles.

float64[9] position_covariance

# If the covariance of the fix is known, fill it in completely. If the
# GPS receiver provides the variance of each measurement, put them
# along the diagonal. If only Dilution of Precision is available,
# estimate an approximate covariance from that.

uint8 COVARIANCE_TYPE_UNKNOWN = 0
uint8 COVARIANCE_TYPE_APPROXIMATED = 1
uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
uint8 COVARIANCE_TYPE_KNOWN = 3

uint8 position_covariance_type

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
MSG: sensor_msgs/NavSatStatus
# Navigation Satellite fix status for any Global Navigation Satellite System

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
  static const int COVARIANCE_TYPE_UNKNOWN = 0;
  static const int COVARIANCE_TYPE_APPROXIMATED = 1;
  static const int COVARIANCE_TYPE_DIAGONAL_KNOWN = 2;
  static const int COVARIANCE_TYPE_KNOWN = 3;

}

