// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:00 2024

// (in-package visualization_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class MenuEntry extends RosMessage<MenuEntry> {
  int id;

  int parent_id;

  String title;

  String command;

  int command_type;

  static MenuEntry $prototype = MenuEntry();
  MenuEntry({ 
    int? id,
    int? parent_id,
    String? title,
    String? command,
    int? command_type,
  }):
  this.id = id ?? 0,
  this.parent_id = parent_id ?? 0,
  this.title = title ?? '',
  this.command = command ?? '',
  this.command_type = command_type ?? 0;

  @override
  MenuEntry call({ 
    int? id,
    int? parent_id,
    String? title,
    String? command,
    int? command_type,
  }) => MenuEntry(
  id: id,
  parent_id: parent_id,
  title: title,
  command: command,
  command_type: command_type,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type MenuEntry
    // Serialize message field [id]
    writer.writeUint32(id);
    // Serialize message field [parent_id]
    writer.writeUint32(parent_id);
    // Serialize message field [title]
    writer.writeString(title);
    // Serialize message field [command]
    writer.writeString(command);
    // Serialize message field [command_type]
    writer.writeUint8(command_type);
  }

  @override
  MenuEntry deserialize(ByteDataReader reader) {
    //deserializes a message object of type MenuEntry
    final data = MenuEntry();
    // Deserialize message field [id]
    data.id = reader.readUint32();
    // Deserialize message field [parent_id]
    data.parent_id = reader.readUint32();
    // Deserialize message field [title]
    data.title = reader.readString();
    // Deserialize message field [command]
    data.command = reader.readString();
    // Deserialize message field [command_type]
    data.command_type = reader.readUint8();
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += utf8.encode(title).length;
    length += utf8.encode(command).length;
    return length + 17;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'visualization_msgs/MenuEntry';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'b90ec63024573de83b57aa93eb39be2d';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# MenuEntry message.

# Each InteractiveMarker message has an array of MenuEntry messages.
# A collection of MenuEntries together describe a
# menu/submenu/subsubmenu/etc tree, though they are stored in a flat
# array.  The tree structure is represented by giving each menu entry
# an ID number and a "parent_id" field.  Top-level entries are the
# ones with parent_id = 0.  Menu entries are ordered within their
# level the same way they are ordered in the containing array.  Parent
# entries must appear before their children.

# Example:
# - id = 3
#   parent_id = 0
#   title = "fun"
# - id = 2
#   parent_id = 0
#   title = "robot"
# - id = 4
#   parent_id = 2
#   title = "pr2"
# - id = 5
#   parent_id = 2
#   title = "turtle"
#
# Gives a menu tree like this:
#  - fun
#  - robot
#    - pr2
#    - turtle

# ID is a number for each menu entry.  Must be unique within the
# control, and should never be 0.
uint32 id

# ID of the parent of this menu entry, if it is a submenu.  If this
# menu entry is a top-level entry, set parent_id to 0.
uint32 parent_id

# menu / entry title
string title

# Arguments to command indicated by command_type (below)
string command

# Command_type stores the type of response desired when this menu
# entry is clicked.
# FEEDBACK: send an InteractiveMarkerFeedback message with menu_entry_id set to this entry's id.
# ROSRUN: execute "rosrun" with arguments given in the command field (above).
# ROSLAUNCH: execute "roslaunch" with arguments given in the command field (above).
uint8 FEEDBACK=0
uint8 ROSRUN=1
uint8 ROSLAUNCH=2
uint8 command_type

''';
  }

// Constants for message
  static const int FEEDBACK = 0;
  static const int ROSRUN = 1;
  static const int ROSLAUNCH = 2;

}

