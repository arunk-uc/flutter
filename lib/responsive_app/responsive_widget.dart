import 'package:flutter/material.dart';

// width
// android min width - 320
// android max width - 411
// ios min width     - 320
// ios max width     - 414

//height
//android min height - 533
//android max height - 823
//ios min height     - 568
//ios max height     - 812
//
//

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget tab;

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 415;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 415;
  }

  ResponsiveWidget({
    Key key,
    this.mobile,
    this.tab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 415)
        return mobile;
      else
        return tab;
    }));
  }
}
