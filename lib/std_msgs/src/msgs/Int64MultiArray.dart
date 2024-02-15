// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package std_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'MultiArrayLayout.dart';

//-----------------------------------------------------------

class Int64MultiArray extends RosMessage<Int64MultiArray> {
  MultiArrayLayout layout;

  List<int> data;

  static Int64MultiArray $prototype = Int64MultiArray();
  Int64MultiArray({ 
    MultiArrayLayout? layout,
    List<int>? data,
  }):
  this.layout = layout ?? MultiArrayLayout(),
  this.data = data ?? [];

  @override
  Int64MultiArray call({ 
    MultiArrayLayout? layout,
    List<int>? data,
  }) => Int64MultiArray(
  layout: layout,
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Int64MultiArray
    // Serialize message field [layout]
    layout.serialize(writer);
    // Serialize message field [data]
    writer.writeArray<int>(data, (val) => writer.writeInt64(val), specArrayLen: null);
  }

  @override
  Int64MultiArray deserialize(ByteDataReader reader) {
    //deserializes a message object of type Int64MultiArray
    final data = Int64MultiArray();
    // Deserialize message field [layout]
    data.layout = MultiArrayLayout.$prototype.deserialize(reader);
    // Deserialize message field [data]
    data.data = reader.readArray<int>(() => reader.readInt64(), arrayLen: null);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += layout.getMessageSize();
    length += 8 * data.length;
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'std_msgs/Int64MultiArray';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '54865aa6c65be0448113a2afc6a49270';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
int64[]           data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
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

