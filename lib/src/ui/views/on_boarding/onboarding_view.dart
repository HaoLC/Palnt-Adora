import 'package:flutter/material.dart';
import 'package:plantagoda/src/app/utils/text_style.dart';
import 'package:plantagoda/src/ui/global/ui_helpers.dart';
import 'package:plantagoda/src/ui/views/on_boarding/onboarding_view_model.dart';
import 'package:plantagoda/src/ui/widgets/dumb/skeleton.dart';
import 'package:plantagoda/src/ui/widgets/smart/default_button/default_buton_size.dart';
import 'package:plantagoda/src/ui/widgets/smart/default_button/default_button.dart';
import 'package:stacked/stacked.dart';

class OnboardingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardingViewModel>.reactive(
      viewModelBuilder: () => OnboardingViewModel(),
      builder: (
        BuildContext context,
        OnboardingViewModel model,
        Widget child,
      ) {
        return Skeleton(
          isBusy: model.isBusy,
          body: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 9,
                  child: PageView.builder(
                    onPageChanged: model.setIndex,
                    itemCount: model.onboardingList.length,
                    itemBuilder: (context, index) => SplashContent(
                      image: model.onboardingList[index]["image"],
                      text: model.onboardingList[index]['text'],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: (20)),
                    child: Row(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(
                            model.onboardingList.length,
                            (index) => buildDot(context,
                                inCurrentPage: model.currentIndex == index),
                          ),
                        ),
                        Spacer(),
                        Flexible(
                          child: DefaultButton(
                            text: "Continue",
                            size: DefaultSize.LARGE,
                            textStyle: BaseText().normalLowerNormal(),
                            onPressed: () => model.onCountinue(),
                            blockButton: true,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        // Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  AnimatedContainer buildDot(BuildContext context, {bool inCurrentPage}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: inCurrentPage ? 30 : 10,
      decoration: BoxDecoration(
        color:
            inCurrentPage ? Theme.of(context).primaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class SplashContent extends ViewModelWidget<OnboardingViewModel> {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context, OnboardingViewModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Spacer(),
        Center(
          child: Image.asset(
            image,
            height: screenWidth(context) * 0.85,
            width: screenWidth(context) * 0.85,
          ),
        ),
        verticalSpaceMedium(context),
        verticalSpaceMedium(context),
        Text("BASESTORE",
            textAlign: TextAlign.left,
            style: BaseText().captionBold().copyWith(
                fontSize: (36), color: Theme.of(context).primaryColor)),
        verticalSpaceSmall(context),
        Text(
          text,
          textAlign: TextAlign.left,
          style: BaseText().normalLowerNormal(),
        ),
        verticalSpaceMedium(context),
      ],
    );
  }
}
