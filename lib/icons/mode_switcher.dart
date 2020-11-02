import 'package:flutter/material.dart';

class ModeSwitcher extends StatelessWidget {
  final String title;
  final bool activated;
  final ValueSetter<bool> onChanged;

  const ModeSwitcher({
    @required this.title,
    @required this.activated,
    @required this.onChanged,
  })  : assert(title != null),
        assert(activated != null);
  @override
  Widget build(BuildContext context) {
      return SwitchListTile.adaptive(
        title: Container(
          padding: EdgeInsets.only(top: 12.0),
          height: 50,
          width: 100,
          child: Text(title, textAlign: TextAlign.center,),
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5.0)),
          border: Border.all(color: Colors.blueAccent)),
        ),
        activeColor: Colors.black,
        value: activated,
        onChanged: onChanged,
      );
  }
}
