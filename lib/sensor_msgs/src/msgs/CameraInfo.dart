// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:36 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'RegionOfInterest.dart';

//-----------------------------------------------------------

class CameraInfo extends RosMessage<CameraInfo> {
  Header header;

  int height;

  int width;

  String distortion_model;

  List<double> D;

  List<double> K;

  List<double> R;

  List<double> P;

  int binning_x;

  int binning_y;

  RegionOfInterest roi;

  static CameraInfo $prototype = CameraInfo();
  CameraInfo({ 
    Header? header,
    int? height,
    int? width,
    String? distortion_model,
    List<double>? D,
    List<double>? K,
    List<double>? R,
    List<double>? P,
    int? binning_x,
    int? binning_y,
    RegionOfInterest? roi,
  }):
  this.header = header ?? Header(),
  this.height = height ?? 0,
  this.width = width ?? 0,
  this.distortion_model = distortion_model ?? '',
  this.D = D ?? [],
  this.K = K ?? List.generate(9, (_) => 0),
  this.R = R ?? List.generate(9, (_) => 0),
  this.P = P ?? List.generate(12, (_) => 0),
  this.binning_x = binning_x ?? 0,
  this.binning_y = binning_y ?? 0,
  this.roi = roi ?? RegionOfInterest();

  @override
  CameraInfo call({ 
    Header? header,
    int? height,
    int? width,
    String? distortion_model,
    List<double>? D,
    List<double>? K,
    List<double>? R,
    List<double>? P,
    int? binning_x,
    int? binning_y,
    RegionOfInterest? roi,
  }) => CameraInfo(
  header: header,
  height: height,
  width: width,
  distortion_model: distortion_model,
  D: D,
  K: K,
  R: R,
  P: P,
  binning_x: binning_x,
  binning_y: binning_y,
  roi: roi,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CameraInfo
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [height]
    writer.writeUint32(height);
    // Serialize message field [width]
    writer.writeUint32(width);
    // Serialize message field [distortion_model]
    writer.writeString(distortion_model);
    // Serialize message field [D]
    writer.writeArray<double>(D, (val) => writer.writeFloat64(val), specArrayLen: null);
    // Check that the constant length array field [K] has the right length
    if (K.length != 9) {
      throw Exception('Unable to serialize array field K - length must be 9');
    }
    // Serialize message field [K]
    writer.writeArray<double>(K, (val) => writer.writeFloat64(val), specArrayLen: 9);
    // Check that the constant length array field [R] has the right length
    if (R.length != 9) {
      throw Exception('Unable to serialize array field R - length must be 9');
    }
    // Serialize message field [R]
    writer.writeArray<double>(R, (val) => writer.writeFloat64(val), specArrayLen: 9);
    // Check that the constant length array field [P] has the right length
    if (P.length != 12) {
      throw Exception('Unable to serialize array field P - length must be 12');
    }
    // Serialize message field [P]
    writer.writeArray<double>(P, (val) => writer.writeFloat64(val), specArrayLen: 12);
    // Serialize message field [binning_x]
    writer.writeUint32(binning_x);
    // Serialize message field [binning_y]
    writer.writeUint32(binning_y);
    // Serialize message field [roi]
    roi.serialize(writer);
  }

  @override
  CameraInfo deserialize(ByteDataReader reader) {
    //deserializes a message object of type CameraInfo
    final data = CameraInfo();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [height]
    data.height = reader.readUint32();
    // Deserialize message field [width]
    data.width = reader.readUint32();
    // Deserialize message field [distortion_model]
    data.distortion_model = reader.readString();
    // Deserialize message field [D]
    data.D = reader.readArray<double>(() => reader.readFloat64(), arrayLen: null);
    // Deserialize message field [K]
    data.K = reader.readArray<double>(() => reader.readFloat64(), arrayLen: 9);
    // Deserialize message field [R]
    data.R = reader.readArray<double>(() => reader.readFloat64(), arrayLen: 9);
    // Deserialize message field [P]
    data.P = reader.readArray<double>(() => reader.readFloat64(), arrayLen: 12);
    // Deserialize message field [binning_x]
    data.binning_x = reader.readUint32();
    // Deserialize message field [binning_y]
    data.binning_y = reader.readUint32();
    // Deserialize message field [roi]
    data.roi = RegionOfInterest.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    length += utf8.encode(distortion_model).length;
    length += 8 * D.length;
    return length + 281;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/CameraInfo';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'c9a58c1b0b154e0e6da7578cb991d214';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This message defines meta information for a camera. It should be in a
# camera namespace on topic "camera_info" and accompanied by up to five
# image topics named:
#
#   image_raw - raw data from the camera driver, possibly Bayer encoded
#   image            - monochrome, distorted
#   image_color      - color, distorted
#   image_rect       - monochrome, rectified
#   image_rect_color - color, rectified
#
# The image_pipeline contains packages (image_proc, stereo_image_proc)
# for producing the four processed image topics from image_raw and
# camera_info. The meaning of the camera parameters are described in
# detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.
#
# The image_geometry package provides a user-friendly interface to
# common operations using this meta information. If you want to, e.g.,
# project a 3d point into image coordinates, we strongly recommend
# using image_geometry.
#
# If the camera is uncalibrated, the matrices D, K, R, P should be left
# zeroed out. In particular, clients may assume that K[0] == 0.0
# indicates an uncalibrated camera.

#######################################################################
#                     Image acquisition info                          #
#######################################################################

# Time of image acquisition, camera coordinate frame ID
Header header    # Header timestamp should be acquisition time of image
                 # Header frame_id should be optical frame of camera
                 # origin of frame should be optical center of camera
                 # +x should point to the right in the image
                 # +y should point down in the image
                 # +z should point into the plane of the image


#######################################################################
#                      Calibration Parameters                         #
#######################################################################
# These are fixed during camera calibration. Their values will be the #
# same in all messages until the camera is recalibrated. Note that    #
# self-calibrating systems may "recalibrate" frequently.              #
#                                                                     #
# The internal parameters can be used to warp a raw (distorted) image #
# to:                                                                 #
#   1. An undistorted image (requires D and K)                        #
#   2. A rectified image (requires D, K, R)                           #
# The projection matrix P projects 3D points into the rectified image.#
#######################################################################

# The image dimensions with which the camera was calibrated. Normally
# this will be the full camera resolution in pixels.
uint32 height
uint32 width

# The distortion model used. Supported models are listed in
# sensor_msgs/distortion_models.h. For most cameras, "plumb_bob" - a
# simple model of radial and tangential distortion - is sufficient.
string distortion_model

# The distortion parameters, size depending on the distortion model.
# For "plumb_bob", the 5 parameters are: (k1, k2, t1, t2, k3).
float64[] D

# Intrinsic camera matrix for the raw (distorted) images.
#     [fx  0 cx]
# K = [ 0 fy cy]
#     [ 0  0  1]
# Projects 3D points in the camera coordinate frame to 2D pixel
# coordinates using the focal lengths (fx, fy) and principal point
# (cx, cy).
float64[9]  K # 3x3 row-major matrix

# Rectification matrix (stereo cameras only)
# A rotation matrix aligning the camera coordinate system to the ideal
# stereo image plane so that epipolar lines in both stereo images are
# parallel.
float64[9]  R # 3x3 row-major matrix

# Projection/camera matrix
#     [fx'  0  cx' Tx]
# P = [ 0  fy' cy' Ty]
#     [ 0   0   1   0]
# By convention, this matrix specifies the intrinsic (camera) matrix
#  of the processed (rectified) image. That is, the left 3x3 portion
#  is the normal camera intrinsic matrix for the rectified image.
# It projects 3D points in the camera coordinate frame to 2D pixel
#  coordinates using the focal lengths (fx', fy') and principal point
#  (cx', cy') - these may differ from the values in K.
# For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will
#  also have R = the identity and P[1:3,1:3] = K.
# For a stereo pair, the fourth column [Tx Ty 0]' is related to the
#  position of the optical center of the second camera in the first
#  camera's frame. We assume Tz = 0 so both cameras are in the same
#  stereo image plane. The first camera always has Tx = Ty = 0. For
#  the right (second) camera of a horizontal stereo pair, Ty = 0 and
#  Tx = -fx' * B, where B is the baseline between the cameras.
# Given a 3D point [X Y Z]', the projection (x, y) of the point onto
#  the rectified image is given by:
#  [u v w]' = P * [X Y Z 1]'
#         x = u / w
#         y = v / w
#  This holds for both images of a stereo pair.
float64[12] P # 3x4 row-major matrix


#######################################################################
#                      Operational Parameters                         #
#######################################################################
# These define the image region actually captured by the camera       #
# driver. Although they affect the geometry of the output image, they #
# may be changed freely without recalibrating the camera.             #
#######################################################################

# Binning refers here to any camera setting which combines rectangular
#  neighborhoods of pixels into larger "super-pixels." It reduces the
#  resolution of the output image to
#  (width / binning_x) x (height / binning_y).
# The default values binning_x = binning_y = 0 is considered the same
#  as binning_x = binning_y = 1 (no subsampling).
uint32 binning_x
uint32 binning_y

# Region of interest (subwindow of full camera resolution), given in
#  full resolution (unbinned) image coordinates. A particular ROI
#  always denotes the same window of pixels on the camera sensor,
#  regardless of binning settings.
# The default setting of roi (all values 0) is considered the same as
#  full resolution (roi.width = width, roi.height = height).
RegionOfInterest roi

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

