// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:06:47 2024

// (in-package shape_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class MeshTriangle extends RosMessage<MeshTriangle> {
  List<int> vertex_indices;

  static MeshTriangle $prototype = MeshTriangle();
  MeshTriangle({ 
    List<int>? vertex_indices,
  }):
  this.vertex_indices = vertex_indices ?? List.generate(3, (_) => 0);

  @override
  MeshTriangle call({ 
    List<int>? vertex_indices,
  }) => MeshTriangle(
  vertex_indices: vertex_indices,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type MeshTriangle
    // Check that the constant length array field [vertex_indices] has the right length
    if (vertex_indices.length != 3) {
      throw Exception('Unable to serialize array field vertex_indices - length must be 3');
    }
    // Serialize message field [vertex_indices]
    writer.writeArray<int>(vertex_indices, (val) => writer.writeUint32(val), specArrayLen: 3);
  }

  @override
  MeshTriangle deserialize(ByteDataReader reader) {
    //deserializes a message object of type MeshTriangle
    final data = MeshTriangle();
    // Deserialize message field [vertex_indices]
    data.vertex_indices = reader.readArray<int>(() => reader.readUint32(), arrayLen: 3);
    return data;
  }

  int getMessageSize() {
    return 12;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'shape_msgs/MeshTriangle';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '23688b2e6d2de3d32fe8af104a903253';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Definition of a triangle's vertices
uint32[3] vertex_indices

''';
  }

}

