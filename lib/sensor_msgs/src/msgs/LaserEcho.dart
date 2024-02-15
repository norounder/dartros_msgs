// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class LaserEcho extends RosMessage<LaserEcho> {
  List<double> echoes;

  static LaserEcho $prototype = LaserEcho();
  LaserEcho({ 
    List<double>? echoes,
  }):
  this.echoes = echoes ?? [];

  @override
  LaserEcho call({ 
    List<double>? echoes,
  }) => LaserEcho(
  echoes: echoes,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type LaserEcho
    // Serialize message field [echoes]
    writer.writeArray<double>(echoes, (val) => writer.writeFloat32(val), specArrayLen: null);
  }

  @override
  LaserEcho deserialize(ByteDataReader reader) {
    //deserializes a message object of type LaserEcho
    final data = LaserEcho();
    // Deserialize message field [echoes]
    data.echoes = reader.readArray<double>(() => reader.readFloat32(), arrayLen: null);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += 4 * echoes.length;
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/LaserEcho';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '8bc5ae449b200fba4d552b4225586696';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This message is a submessage of MultiEchoLaserScan and is not intended
# to be used separately.

float32[] echoes  # Multiple values of ranges or intensities.
                  # Each array represents data from the same angle increment.
''';
  }

}

