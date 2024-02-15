// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package std_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'MultiArrayDimension.dart';

//-----------------------------------------------------------

class MultiArrayLayout extends RosMessage<MultiArrayLayout> {
  List<MultiArrayDimension> dim;

  int data_offset;

  static MultiArrayLayout $prototype = MultiArrayLayout();
  MultiArrayLayout({ 
    List<MultiArrayDimension>? dim,
    int? data_offset,
  }):
  this.dim = dim ?? [],
  this.data_offset = data_offset ?? 0;

  @override
  MultiArrayLayout call({ 
    List<MultiArrayDimension>? dim,
    int? data_offset,
  }) => MultiArrayLayout(
  dim: dim,
  data_offset: data_offset,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type MultiArrayLayout
    // Serialize message field [dim]
    // Serialize the length for message field [dim]
    writer.writeUint32(dim.length);
    dim.forEach((val) {
      val.serialize(writer);
    });
    // Serialize message field [data_offset]
    writer.writeUint32(data_offset);
  }

  @override
  MultiArrayLayout deserialize(ByteDataReader reader) {
    //deserializes a message object of type MultiArrayLayout
    final data = MultiArrayLayout();
    // Deserialize message field [dim]
    {
      // Deserialize array length for message field [dim]
      final len = reader.readInt32();
      data.dim = List.generate(len, (_) => MultiArrayDimension.$prototype.deserialize(reader));
    }
    // Deserialize message field [data_offset]
    data.data_offset = reader.readUint32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    dim.forEach((val) {
      length += val.getMessageSize();
    });
    return length + 8;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'std_msgs/MultiArrayLayout';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '0fed2a11c13e11c5571b4e2a995a91a3';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = "height"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = "width"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = "channel"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
''';
  }

}

