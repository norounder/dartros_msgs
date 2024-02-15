// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:06:47 2024

// (in-package shape_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class Plane extends RosMessage<Plane> {
  List<double> coef;

  static Plane $prototype = Plane();
  Plane({ 
    List<double>? coef,
  }):
  this.coef = coef ?? List.generate(4, (_) => 0);

  @override
  Plane call({ 
    List<double>? coef,
  }) => Plane(
  coef: coef,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Plane
    // Check that the constant length array field [coef] has the right length
    if (coef.length != 4) {
      throw Exception('Unable to serialize array field coef - length must be 4');
    }
    // Serialize message field [coef]
    writer.writeArray<double>(coef, (val) => writer.writeFloat64(val), specArrayLen: 4);
  }

  @override
  Plane deserialize(ByteDataReader reader) {
    //deserializes a message object of type Plane
    final data = Plane();
    // Deserialize message field [coef]
    data.coef = reader.readArray<double>(() => reader.readFloat64(), arrayLen: 4);
    return data;
  }

  int getMessageSize() {
    return 32;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'shape_msgs/Plane';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '2c1b92ed8f31492f8e73f6a4a44ca796';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Representation of a plane, using the plane equation ax + by + cz + d = 0

# a := coef[0]
# b := coef[1]
# c := coef[2]
# d := coef[3]

float64[4] coef

''';
  }

}

