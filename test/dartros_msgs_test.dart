/* 
 * almost copied from dartros example.
 * take a look how to import dartros_msgs package.
*/ 

import 'package:dartros/dartros.dart';
import 'package:dartros_msgs/sensor_msgs/msgs.dart';
import 'package:dartros_msgs/nav_msgs/msgs.dart';

void gridCb(OccupancyGrid grid){
  print("grid callback");
}

Future<void> main(List<String> args) async {
  final node = await initNode('test_node', args);
  final img_msg = Image(
      header: null,
      height: 640,
      width: 480,
      encoding: 'rgba8',
      is_bigendian: 0,
      step: 480 * 4, // image width * 4bytes(rgba)
      data: List.generate(640 * 480 * 4, (_) => 255));

  final pub = node.advertise('/robot/head_display', Image.$prototype);
  final sub = node.subscribe<OccupancyGrid>('/image_raw', OccupancyGrid.$prototype, gridCb);

  while (true) {
    pub.publish(img_msg, 1);
    await Future.delayed(const Duration(seconds: 2));
  }
}