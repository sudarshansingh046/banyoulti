import 'package:banyoulti/utils/colors.dart';
import 'package:banyoulti/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:flutter_onboard/src/contants/constants.dart';
import 'package:flutter_onboard/src/models/onboard_state_model.dart';
import 'package:flutter_onboard/src/models/page_indicator_style_model.dart';
import 'package:flutter_onboard/src/providers/providers.dart';
import 'package:flutter_onboard/src/widgets/page_indicator.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'page_indicator.dart' as p;

class OnBoard extends HookConsumerWidget {
  /// Data for OnBoard [List<OnBoardModel>]
  /// @Required
  final List<String> onBoardData;

  /// OnTapping skip button action
  final VoidCallback? onSkip;

  /// OnTapping done button action
  final VoidCallback? onDone;

  /// Controller for [PageView]
  /// @Required
  final PageController pageController;

  /// Title text style
  final TextStyle? titleStyles;

  /// Description text style
  final TextStyle? descriptionStyles;

  /// OnBoard Image width
  final double? imageWidth;

  /// OnBoard Image height
  final double? imageHeight;

  /// Skip Button Widget
  final Widget? skipButton;

  /// Next Button Widget
  final Widget? nextButton;

  /// Animation [Duration] for transition from one page to another
  /// @Default [Duration(milliseconds:250)]
  final Duration duration;

  /// [Curve] used for animation
  /// @Default [Curves.easeInOut]
  final Curve curve;

  /// [PageIndicatorStyle] dot styles
  final PageIndicatorStyle pageIndicatorStyle;

  const OnBoard({
    Key? key,
    required this.onBoardData,
    this.onSkip,
    this.onDone,
    required this.pageController,
    this.titleStyles,
    this.descriptionStyles,
    this.imageWidth,
    this.imageHeight,
    this.skipButton,
    this.nextButton,
    this.duration = const Duration(milliseconds: 250),
    this.curve = Curves.easeInOut,
    this.pageIndicatorStyle = const PageIndicatorStyle(
        width: 150,
        activeColor: Colors.blue,
        inactiveColor: Colors.blueAccent,
        activeSize: Size(12, 12),
        inactiveSize: Size(8, 8)),
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      child: _OnBoard(
        onBoardData: onBoardData,
        pageController: pageController,
        onSkip: onSkip,
        onDone: onDone,
        titleStyles: titleStyles,
        descriptionStyles: descriptionStyles,
        imageWidth: imageWidth,
        imageHeight: imageHeight,
        skipButton: skipButton,
        nextButton: nextButton,
        duration: duration,
        curve: curve,
        pageIndicatorStyle: pageIndicatorStyle,
      ),
    );
  }
}

class _OnBoard extends HookConsumerWidget {
  /// Data for OnBoard [List<OnBoardModel>]
  /// @Required
  final List<String> onBoardData;

  /// OnTapping skip button action
  final VoidCallback? onSkip;

  /// OnTapping done button action
  final VoidCallback? onDone;

  /// Controller for [PageView]
  /// @Required
  final PageController pageController;

  /// Title text style
  final TextStyle? titleStyles;

  /// Description text style
  final TextStyle? descriptionStyles;

  /// OnBoard Image width
  final double? imageWidth;

  /// OnBoard Image height
  final double? imageHeight;

  /// Skip Button Widget
  final Widget? skipButton;

  /// Next Button Widget
  final Widget? nextButton;

  /// Animation [Duration] for transition from one page to another
  /// @Default [Duration(milliseconds:250)]
  final Duration duration;

  /// [Curve] used for animation
  /// @Default [Curves.easeInOut]
  final Curve curve;

  /// [PageIndicatorStyle] dot styles
  final PageIndicatorStyle pageIndicatorStyle;

  const _OnBoard({
    Key? key,
    required this.onBoardData,
    this.onSkip,
    this.onDone,
    required this.pageController,
    this.titleStyles,
    this.descriptionStyles,
    this.imageWidth,
    this.imageHeight,
    this.skipButton,
    this.nextButton,
    this.duration = const Duration(milliseconds: 250),
    this.curve = Curves.easeInOut,
    this.pageIndicatorStyle = const PageIndicatorStyle(
        width: 150,
        activeColor: Colors.blue,
        inactiveColor: Colors.blueAccent,
        activeSize: Size(12, 12),
        inactiveSize: Size(8, 8)),
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final onBoardState = ref.watch(onBoardStateProvider);
    final onBoardStateNotifier = ref.watch(onBoardStateProvider.notifier);

    final screenSize = MediaQuery.of(context).size;
    final double pageViewHeight = screenSize.height -
        skipContainerHeight -
        footerContentHeight -
        pageIndicatorHeight;

    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: SizedBox(
                height: pageViewHeight,
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (page) => onBoardStateNotifier.onPageChanged(
                      page, onBoardData.length),
                  itemCount: onBoardData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .15,
                            // width: 150,
                            child: Image.asset(
                              'images/Logo4.png',
                              width: imageWidth,
                              height: imageHeight,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 3,
                            margin: const EdgeInsets.only(
                              left: 12,
                              right: 12,
                              top: 80,
                            ),
                            child: Image.asset(
                              'images/welcomelogo.png',
                            ),
                          ),
                          const SizedBox(height: 80),
                          OnBoardConsumer(
                            builder: (context, ref, child) {
                              final state = ref.watch(onBoardStateProvider);
                              return state.isLastPage
                                  ? Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 18),
                                      child: MaterialButton(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                16,
                                        minWidth:
                                            MediaQuery.of(context).size.width *
                                                .8,
                                        color: kwhite,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        onPressed: () {
                                          Get.to(() => LoginScreen());
                                        },
                                        child: const Text(
                                          "Passez a I'application",
                                          style: TextStyle(
                                            color: kblack,
                                          ),
                                        ),
                                      ),
                                    )
                                  : Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 18),
                                      child: Text(
                                        onBoardData[index],
                                        textAlign: TextAlign.center,
                                        style: descriptionStyles ??
                                            const TextStyle(
                                              fontSize: 14,
                                              color: Colors.black54,
                                            ),
                                      ),
                                    );
                            },
                          ),
                        ],
                      ),
                    );
                  },
                )),
          ),
          SizedBox(
            height: pageIndicatorHeight,
            child: p.PageIndicator(
              count: onBoardData.length,
              activePage: onBoardState.page,
              pageIndicatorStyle: pageIndicatorStyle,
            ),
          ),
        ],
      ),
    );
  }
}
