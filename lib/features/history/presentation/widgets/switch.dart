import 'package:bmi_calculator/features/common/presentation/layout_design/expanded_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../domain/providers.dart';

class SwitchGraph extends ConsumerWidget {
  const SwitchGraph({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isGraphShown = ref.watch(isGraphProvider.state);
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.sp),
            decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
                borderRadius: BorderRadius.all(Radius.circular(20.sp))),
            child: ExpandedRow(children: [
              InkWell(
                onTap: () => isGraphShown.update((state) => false),
                child: Container(
                  padding: EdgeInsets.all(10.sp),
                  decoration: BoxDecoration(
                      color: !isGraphShown.state
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).secondaryHeaderColor,
                      borderRadius: BorderRadius.all(Radius.circular(20.sp))),
                  child: Center(
                    child: Text(
                      'List data',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: isGraphShown.state
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).secondaryHeaderColor,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => isGraphShown.update((state) => true),
                child: Container(
                  padding: EdgeInsets.all(10.sp),
                  decoration: BoxDecoration(
                      color: isGraphShown.state
                          ? Theme.of(context).primaryColor
                          : Theme.of(context).secondaryHeaderColor,
                      borderRadius: BorderRadius.all(Radius.circular(20.sp))),
                  child: Center(
                    child: Text(
                      'Graph',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: !isGraphShown.state
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).secondaryHeaderColor,
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 1.h,
          ),
        ],
      ),
    );
  }
}
