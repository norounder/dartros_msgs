// Auto-generated. Do not edit!

// Updated: Mon Feb 19 17:02:59 2024

// (in-package tf2_msgs.srv)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class FrameGraphRequest extends RosMessage<FrameGraphRequest> {
  static FrameGraphRequest $prototype = FrameGraphRequest();
  FrameGraphRequest();

  @override
  FrameGraphRequest call() => FrameGraphRequest();

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FrameGraphRequest
  }

  @override
  FrameGraphRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type FrameGraphRequest
    final data = FrameGraphRequest();
    return data;
  }

  int getMessageSize() {
    return 0;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'tf2_msgs/FrameGraphRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''
''';
  }

}

class FrameGraphResponse extends RosMessage<FrameGraphResponse> {
  String frame_yaml;

  static FrameGraphResponse $prototype = FrameGraphResponse();
  FrameGraphResponse({ 
    String? frame_yaml,
  }):
  this.frame_yaml = frame_yaml ?? '';

  @override
  FrameGraphResponse call({ 
    String? frame_yaml,
  }) => FrameGraphResponse(
  frame_yaml: frame_yaml,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FrameGraphResponse
    // Serialize message field [frame_yaml]
    writer.writeString(frame_yaml);
  }

  @override
  FrameGraphResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type FrameGraphResponse
    final data = FrameGraphResponse();
    // Deserialize message field [frame_yaml]
    data.frame_yaml = reader.readString();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(frame_yaml).length;
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'tf2_msgs/FrameGraphResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '437ea58e9463815a0d511c7326b686b0';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''string frame_yaml


''';
  }

}

class FrameGraph extends RosServiceMessage<FrameGraphRequest, FrameGraphResponse> {
  static final $prototype = FrameGraph();
  @override
  FrameGraphRequest get request => FrameGraphRequest.$prototype;
  @override
  FrameGraphResponse get response => FrameGraphResponse.$prototype;
  @override
  String get md5sum => '437ea58e9463815a0d511c7326b686b0';
  @override
  String get fullType => 'tf2_msgs/FrameGraph';
  @override
  String get messageDefinition => request.messageDefinition + "---" + response.messageDefinition;
}
