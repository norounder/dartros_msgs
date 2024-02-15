// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:34 2024

// (in-package stereo_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:dartros_msgs/sensor_msgs/msgs.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class DisparityImage extends RosMessage<DisparityImage> {
  Header header;

  Image image;

  double f;

  double T;

  RegionOfInterest valid_window;

  double min_disparity;

  double max_disparity;

  double delta_d;

  static DisparityImage $prototype = DisparityImage();
  DisparityImage({ 
    Header? header,
    Image? image,
    double? f,
    double? T,
    RegionOfInterest? valid_window,
    double? min_disparity,
    double? max_disparity,
    double? delta_d,
  }):
  this.header = header ?? Header(),
  this.image = image ?? Image(),
  this.f = f ?? 0.0,
  this.T = T ?? 0.0,
  this.valid_window = valid_window ?? RegionOfInterest(),
  this.min_disparity = min_disparity ?? 0.0,
  this.max_disparity = max_disparity ?? 0.0,
  this.delta_d = delta_d ?? 0.0;

  @override
  DisparityImage call({ 
    Header? header,
    Image? image,
    double? f,
    double? T,
    RegionOfInterest? valid_window,
    double? min_disparity,
    double? max_disparity,
    double? delta_d,
  }) => DisparityImage(
  header: header,
  image: image,
  f: f,
  T: T,
  valid_window: valid_window,
  min_disparity: min_disparity,
  max_disparity: max_disparity,
  delta_d: delta_d,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type DisparityImage
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [image]
    image.serialize(writer);
    // Serialize message field [f]
    writer.writeFloat32(f);
    // Serialize message field [T]
    writer.writeFloat32(T);
    // Serialize message field [valid_window]
    valid_window.serialize(writer);
    // Serialize message field [min_disparity]
    writer.writeFloat32(min_disparity);
    // Serialize message field [max_disparity]
    writer.writeFloat32(max_disparity);
    // Serialize message field [delta_d]
    writer.writeFloat32(delta_d);
  }

  @override
  DisparityImage deserialize(ByteDataReader reader) {
    //deserializes a message object of type DisparityImage
    final data = DisparityImage();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [image]
    data.image = Image.$prototype.deserialize(reader);
    // Deserialize message field [f]
    data.f = reader.readFloat32();
    // Deserialize message field [T]
    data.T = reader.readFloat32();
    // Deserialize message field [valid_window]
    data.valid_window = RegionOfInterest.$prototype.deserialize(reader);
    // Deserialize message field [min_disparity]
    data.min_disparity = reader.readFloat32();
    // Deserialize message field [max_disparity]
    data.max_disparity = reader.readFloat32();
    // Deserialize message field [delta_d]
    data.delta_d = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += image.getMessageSize();
    return length + 37;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'stereo_msgs/DisparityImage';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '04a177815f75271039fa21f16acad8c9';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Separate header for compatibility with current TimeSynchronizer.
# Likely to be removed in a later release, use image.header instead.
Header header

# Floating point disparity image. The disparities are pre-adjusted for any
# x-offset between the principal points of the two cameras (in the case
# that they are verged). That is: d = x_l - x_r - (cx_l - cx_r)
sensor_msgs/Image image

# Stereo geometry. For disparity d, the depth from the camera is Z = fT/d.
float32 f # Focal length, pixels
float32 T # Baseline, world units

# Subwindow of (potentially) valid disparity values.
sensor_msgs/RegionOfInterest valid_window

# The range of disparities searched.
# In the disparity image, any disparity less than min_disparity is invalid.
# The disparity search range defines the horopter, or 3D volume that the
# stereo algorithm can "see". Points with Z outside of:
#     Z_min = fT / max_disparity
#     Z_max = fT / min_disparity
# could not be found.
float32 min_disparity
float32 max_disparity

# Smallest allowed disparity increment. The smallest achievable depth range
# resolution is delta_Z = (Z^2/fT)*delta_d.
float32 delta_d

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
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
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

