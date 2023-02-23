//ui element of it, widget

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WrapBottomSheet extends StatelessWidget {
  final List<Widget> children;
  const WrapBottomSheet({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(15.sp),
          child: Column(
            children: children,
          ),
        ),
      ],
    );
  }
}
