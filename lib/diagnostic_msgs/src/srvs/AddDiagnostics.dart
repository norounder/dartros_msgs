// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:06:09 2024

// (in-package diagnostic_msgs.srv)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddDiagnosticsRequest extends RosMessage<AddDiagnosticsRequest> {
  String load_namespace;

  static AddDiagnosticsRequest $prototype = AddDiagnosticsRequest();
  AddDiagnosticsRequest({ 
    String? load_namespace,
  }):
  this.load_namespace = load_namespace ?? '';

  @override
  AddDiagnosticsRequest call({ 
    String? load_namespace,
  }) => AddDiagnosticsRequest(
  load_namespace: load_namespace,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type AddDiagnosticsRequest
    // Serialize message field [load_namespace]
    writer.writeString(load_namespace);
  }

  @override
  AddDiagnosticsRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type AddDiagnosticsRequest
    final data = AddDiagnosticsRequest();
    // Deserialize message field [load_namespace]
    data.load_namespace = reader.readString();
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += utf8.encode(load_namespace).length;
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'diagnostic_msgs/AddDiagnosticsRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'c26cf6e164288fbc6050d74f838bcdf0';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This service is used as part of the process for loading analyzers at runtime,
# and should be used by a loader script or program, not as a standalone service.
# Information about dynamic addition of analyzers can be found at
# http://wiki.ros.org/diagnostics/Tutorials/Adding%20Analyzers%20at%20Runtime

# The load_namespace parameter defines the namespace where parameters for the
# initialization of analyzers in the diagnostic aggregator have been loaded. The
# value should be a global name (i.e. /my/name/space), not a relative
# (my/name/space) or private (~my/name/space) name. Analyzers will not be added
# if a non-global name is used. The call will also fail if the namespace
# contains parameters that follow a namespace structure that does not conform to
# that expected by the analyzer definitions. See
# http://wiki.ros.org/diagnostics/Tutorials/Configuring%20Diagnostic%20Aggregators
# and http://wiki.ros.org/diagnostics/Tutorials/Using%20the%20GenericAnalyzer
# for examples of the structure of yaml files which are expected to have been
# loaded into the namespace.
string load_namespace

''';
  }

}

class AddDiagnosticsResponse extends RosMessage<AddDiagnosticsResponse> {
  bool success;

  String message;

  static AddDiagnosticsResponse $prototype = AddDiagnosticsResponse();
  AddDiagnosticsResponse({ 
    bool? success,
    String? message,
  }):
  this.success = success ?? false,
  this.message = message ?? '';

  @override
  AddDiagnosticsResponse call({ 
    bool? success,
    String? message,
  }) => AddDiagnosticsResponse(
  success: success,
  message: message,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type AddDiagnosticsResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
    // Serialize message field [message]
    writer.writeString(message);
  }

  @override
  AddDiagnosticsResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type AddDiagnosticsResponse
    final data = AddDiagnosticsResponse();
    // Deserialize message field [success]
    data.success = reader.readUint8() != 0;
    // Deserialize message field [message]
    data.message = reader.readString();
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += utf8.encode(message).length;
    return length + 5;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'diagnostic_msgs/AddDiagnosticsResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''
# True if diagnostic aggregator was updated with new diagnostics, False
# otherwise. A false return value means that either there is a bond in the
# aggregator which already used the requested namespace, or the initialization
# of analyzers failed.
bool success

# Message with additional information about the success or failure
string message


''';
  }

}

class AddDiagnostics extends RosServiceMessage<AddDiagnosticsRequest, AddDiagnosticsResponse> {
  static final $prototype = AddDiagnostics();
  @override
  AddDiagnosticsRequest get request => AddDiagnosticsRequest.$prototype;
  @override
  AddDiagnosticsResponse get response => AddDiagnosticsResponse.$prototype;
  @override
  String get md5sum => 'e6ac9bbde83d0d3186523c3687aecaee';
  @override
  String get fullType => 'diagnostic_msgs/AddDiagnostics';
  @override
  String get messageDefinition => request.messageDefinition + "---" + response.messageDefinition;
}
