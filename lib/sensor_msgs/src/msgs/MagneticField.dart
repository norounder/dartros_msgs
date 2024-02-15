// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:dartros_msgs/geometry_msgs/msgs.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class MagneticField extends RosMessage<MagneticField> {
  Header header;

  Vector3 magnetic_field;

  List<double> magnetic_field_covariance;

  static MagneticField $prototype = MagneticField();
  MagneticField({ 
    Header? header,
    Vector3? magnetic_field,
    List<double>? magnetic_field_covariance,
  }):
  this.header = header ?? Header(),
  this.magnetic_field = magnetic_field ?? Vector3(),
  this.magnetic_field_covariance = magnetic_field_covariance ?? List.generate(9, (_) => 0);

  @override
  MagneticField call({ 
    Header? header,
    Vector3? magnetic_field,
    List<double>? magnetic_field_covariance,
  }) => MagneticField(
  header: header,
  magnetic_field: magnetic_field,
  magnetic_field_covariance: magnetic_field_covariance,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type MagneticField
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [magnetic_field]
    magnetic_field.serialize(writer);
    // Check that the constant length array field [magnetic_field_covariance] has the right length
    if (magnetic_field_covariance.length != 9) {
      throw Exception('Unable to serialize array field magnetic_field_covariance - length must be 9');
    }
    // Serialize message field [magnetic_field_covariance]
    writer.writeArray<double>(magnetic_field_covariance, (val) => writer.writeFloat64(val), specArrayLen: 9);
  }

  @override
  MagneticField deserialize(ByteDataReader reader) {
    //deserializes a message object of type MagneticField
    final data = MagneticField();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [magnetic_field]
    data.magnetic_field = Vector3.$prototype.deserialize(reader);
    // Deserialize message field [magnetic_field_covariance]
    data.magnetic_field_covariance = reader.readArray<double>(() => reader.readFloat64(), arrayLen: 9);
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    return length + 96;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/MagneticField';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '2f3b0b43eed0c9501de0fa3ff89a45aa';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return ''' # Measurement of the Magnetic Field vector at a specific location.

 # If the covariance of the measurement is known, it should be filled in
 # (if all you know is the variance of each measurement, e.g. from the datasheet,
 #just put those along the diagonal)
 # A covariance matrix of all zeros will be interpreted as "covariance unknown",
 # and to use the data a covariance will have to be assumed or gotten from some
 # other source


 Header header                        # timestamp is the time the
                                      # field was measured
                                      # frame_id is the location and orientation
                                      # of the field measurement

 geometry_msgs/Vector3 magnetic_field # x, y, and z components of the
                                      # field vector in Tesla
                                      # If your sensor does not output 3 axes,
                                      # put NaNs in the components not reported.

 float64[9] magnetic_field_covariance # Row major about x, y, z axes
                                      # 0 is interpreted as variance unknown
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

