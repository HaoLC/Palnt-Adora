import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:plantagoda/src/ui/widgets/dumb/skeleton.dart';

import './dash_board_view_model.dart';

class DashBoardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashBoardViewModel>.reactive(
      viewModelBuilder: () => DashBoardViewModel(),
      builder: (
        BuildContext context,
        DashBoardViewModel model,
        Widget child,
      ) {
        return Skeleton(
          isBusy: model.isBusy,
          body: Center(
            child: GestureDetector(
              onTap: model.onCountinue,
              child: Text(
                'DashBoardView',
              ),
            ),
          ),
        );
      },
    );
  }
}
