// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'Point32.dart';

//-----------------------------------------------------------

class Polygon extends RosMessage<Polygon> {
  List<Point32> points;

  static Polygon $prototype = Polygon();
  Polygon({ 
    List<Point32>? points,
  }):
  this.points = points ?? [];

  @override
  Polygon call({ 
    List<Point32>? points,
  }) => Polygon(
  points: points,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Polygon
    // Serialize message field [points]
    // Serialize the length for message field [points]
    writer.writeUint32(points.length);
    points.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  Polygon deserialize(ByteDataReader reader) {
    //deserializes a message object of type Polygon
    final data = Polygon();
    // Deserialize message field [points]
    {
      // Deserialize array length for message field [points]
      final len = reader.readInt32();
      data.points = List.generate(len, (_) => Point32.$prototype.deserialize(reader));
    }
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += 12 * points.length;
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/Polygon';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'cd60a26494a087f577976f0329fa120e';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
''';
  }

}

