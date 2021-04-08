import 'package:flutter/material.dart';

class OrientationBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientation Bulder'),
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.portrait) {
            return Container(
              child: Text('Portrait'),
            );
          } else {
            return Container(
              child: Text('landscape'),
            );
          }
        },
      ),
    );
  }
}
