// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:06:47 2024

// (in-package shape_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:dartros_msgs/geometry_msgs/msgs.dart';
import 'MeshTriangle.dart';

//-----------------------------------------------------------

class Mesh extends RosMessage<Mesh> {
  List<MeshTriangle> triangles;

  List<Point> vertices;

  static Mesh $prototype = Mesh();
  Mesh({ 
    List<MeshTriangle>? triangles,
    List<Point>? vertices,
  }):
  this.triangles = triangles ?? [],
  this.vertices = vertices ?? [];

  @override
  Mesh call({ 
    List<MeshTriangle>? triangles,
    List<Point>? vertices,
  }) => Mesh(
  triangles: triangles,
  vertices: vertices,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Mesh
    // Serialize message field [triangles]
    // Serialize the length for message field [triangles]
    writer.writeUint32(triangles.length);
    triangles.forEach((val) {
      val.serialize(writer);
    });
    // Serialize message field [vertices]
    // Serialize the length for message field [vertices]
    writer.writeUint32(vertices.length);
    vertices.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  Mesh deserialize(ByteDataReader reader) {
    //deserializes a message object of type Mesh
    final data = Mesh();
    // Deserialize message field [triangles]
    {
      // Deserialize array length for message field [triangles]
      final len = reader.readInt32();
      data.triangles = List.generate(len, (_) => MeshTriangle.$prototype.deserialize(reader));
    }
    // Deserialize message field [vertices]
    {
      // Deserialize array length for message field [vertices]
      final len = reader.readInt32();
      data.vertices = List.generate(len, (_) => Point.$prototype.deserialize(reader));
    }
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += 12 * triangles.length;
    length += 24 * vertices.length;
    return length + 8;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'shape_msgs/Mesh';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '1ffdae9486cd3316a121c578b47a85cc';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Definition of a mesh

# list of triangles; the index values refer to positions in vertices[]
MeshTriangle[] triangles

# the actual vertices that make up the mesh
geometry_msgs/Point[] vertices

================================================================================
MSG: shape_msgs/MeshTriangle
# Definition of a triangle's vertices
uint32[3] vertex_indices

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

''';
  }

}

