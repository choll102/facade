import 'package:flutter/material.dart';
class DeviceIcon extends StatelessWidget {
  final IconData iconData;
  final bool activated;

  const DeviceIcon({
    @required this.iconData,
    @required this.activated,
  })  : assert(iconData != null),
        assert(activated != null);

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      color: activated ? Colors.blueAccent : Colors.redAccent,
      size: 42.0,
    );
  }
}