// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:dartros_msgs/geometry_msgs/msgs.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class Imu extends RosMessage<Imu> {
  Header header;

  Quaternion orientation;

  List<double> orientation_covariance;

  Vector3 angular_velocity;

  List<double> angular_velocity_covariance;

  Vector3 linear_acceleration;

  List<double> linear_acceleration_covariance;

  static Imu $prototype = Imu();
  Imu({ 
    Header? header,
    Quaternion? orientation,
    List<double>? orientation_covariance,
    Vector3? angular_velocity,
    List<double>? angular_velocity_covariance,
    Vector3? linear_acceleration,
    List<double>? linear_acceleration_covariance,
  }):
  this.header = header ?? Header(),
  this.orientation = orientation ?? Quaternion(),
  this.orientation_covariance = orientation_covariance ?? List.generate(9, (_) => 0),
  this.angular_velocity = angular_velocity ?? Vector3(),
  this.angular_velocity_covariance = angular_velocity_covariance ?? List.generate(9, (_) => 0),
  this.linear_acceleration = linear_acceleration ?? Vector3(),
  this.linear_acceleration_covariance = linear_acceleration_covariance ?? List.generate(9, (_) => 0);

  @override
  Imu call({ 
    Header? header,
    Quaternion? orientation,
    List<double>? orientation_covariance,
    Vector3? angular_velocity,
    List<double>? angular_velocity_covariance,
    Vector3? linear_acceleration,
    List<double>? linear_acceleration_covariance,
  }) => Imu(
  header: header,
  orientation: orientation,
  orientation_covariance: orientation_covariance,
  angular_velocity: angular_velocity,
  angular_velocity_covariance: angular_velocity_covariance,
  linear_acceleration: linear_acceleration,
  linear_acceleration_covariance: linear_acceleration_covariance,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Imu
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [orientation]
    orientation.serialize(writer);
    // Check that the constant length array field [orientation_covariance] has the right length
    if (orientation_covariance.length != 9) {
      throw Exception('Unable to serialize array field orientation_covariance - length must be 9');
    }
    // Serialize message field [orientation_covariance]
    writer.writeArray<double>(orientation_covariance, (val) => writer.writeFloat64(val), specArrayLen: 9);
    // Serialize message field [angular_velocity]
    angular_velocity.serialize(writer);
    // Check that the constant length array field [angular_velocity_covariance] has the right length
    if (angular_velocity_covariance.length != 9) {
      throw Exception('Unable to serialize array field angular_velocity_covariance - length must be 9');
    }
    // Serialize message field [angular_velocity_covariance]
    writer.writeArray<double>(angular_velocity_covariance, (val) => writer.writeFloat64(val), specArrayLen: 9);
    // Serialize message field [linear_acceleration]
    linear_acceleration.serialize(writer);
    // Check that the constant length array field [linear_acceleration_covariance] has the right length
    if (linear_acceleration_covariance.length != 9) {
      throw Exception('Unable to serialize array field linear_acceleration_covariance - length must be 9');
    }
    // Serialize message field [linear_acceleration_covariance]
    writer.writeArray<double>(linear_acceleration_covariance, (val) => writer.writeFloat64(val), specArrayLen: 9);
  }

  @override
  Imu deserialize(ByteDataReader reader) {
    //deserializes a message object of type Imu
    final data = Imu();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [orientation]
    data.orientation = Quaternion.$prototype.deserialize(reader);
    // Deserialize message field [orientation_covariance]
    data.orientation_covariance = reader.readArray<double>(() => reader.readFloat64(), arrayLen: 9);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = Vector3.$prototype.deserialize(reader);
    // Deserialize message field [angular_velocity_covariance]
    data.angular_velocity_covariance = reader.readArray<double>(() => reader.readFloat64(), arrayLen: 9);
    // Deserialize message field [linear_acceleration]
    data.linear_acceleration = Vector3.$prototype.deserialize(reader);
    // Deserialize message field [linear_acceleration_covariance]
    data.linear_acceleration_covariance = reader.readArray<double>(() => reader.readFloat64(), arrayLen: 9);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 296;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/Imu';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '6a62c6daae103f4ff57a132d6f95cec2';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This is a message to hold data from an IMU (Inertial Measurement Unit)
#
# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
#
# If the covariance of the measurement is known, it should be filled in (if all you know is the 
# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
# A covariance matrix of all zeros will be interpreted as "covariance unknown", and to use the
# data a covariance will have to be assumed or gotten from some other source
#
# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
# estimate), please set element 0 of the associated covariance matrix to -1
# If you are interpreting this message, please check for a value of -1 in the first element of each 
# covariance matrix, and disregard the associated estimate.

Header header

geometry_msgs/Quaternion orientation
float64[9] orientation_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 angular_velocity
float64[9] angular_velocity_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 linear_acceleration
float64[9] linear_acceleration_covariance # Row major x, y z 

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
''';
  }

}

