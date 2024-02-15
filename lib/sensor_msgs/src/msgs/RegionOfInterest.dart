// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class RegionOfInterest extends RosMessage<RegionOfInterest> {
  int x_offset;

  int y_offset;

  int height;

  int width;

  bool do_rectify;

  static RegionOfInterest $prototype = RegionOfInterest();
  RegionOfInterest({ 
    int? x_offset,
    int? y_offset,
    int? height,
    int? width,
    bool? do_rectify,
  }):
  this.x_offset = x_offset ?? 0,
  this.y_offset = y_offset ?? 0,
  this.height = height ?? 0,
  this.width = width ?? 0,
  this.do_rectify = do_rectify ?? false;

  @override
  RegionOfInterest call({ 
    int? x_offset,
    int? y_offset,
    int? height,
    int? width,
    bool? do_rectify,
  }) => RegionOfInterest(
  x_offset: x_offset,
  y_offset: y_offset,
  height: height,
  width: width,
  do_rectify: do_rectify,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type RegionOfInterest
    // Serialize message field [x_offset]
    writer.writeUint32(x_offset);
    // Serialize message field [y_offset]
    writer.writeUint32(y_offset);
    // Serialize message field [height]
    writer.writeUint32(height);
    // Serialize message field [width]
    writer.writeUint32(width);
    // Serialize message field [do_rectify]
    writer.writeUint8(do_rectify == false ? 0 : 1);
  }

  @override
  RegionOfInterest deserialize(ByteDataReader reader) {
    //deserializes a message object of type RegionOfInterest
    final data = RegionOfInterest();
    // Deserialize message field [x_offset]
    data.x_offset = reader.readUint32();
    // Deserialize message field [y_offset]
    data.y_offset = reader.readUint32();
    // Deserialize message field [height]
    data.height = reader.readUint32();
    // Deserialize message field [width]
    data.width = reader.readUint32();
    // Deserialize message field [do_rectify]
    data.do_rectify = reader.readUint8() != 0;
    return data;
  }

  int getMessageSize() {
    return 17;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/RegionOfInterest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'bdb633039d588fcccb441a4d43ccfe09';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the "raw"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

''';
  }

}

