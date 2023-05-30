import 'package:extra_alignments/extra_alignments.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sean_codez/app/app.dart';
import 'package:sean_codez/blocs/blocs.dart';
import 'package:sean_codez/widgets/widgets.dart';
import 'package:vrouter/vrouter.dart';

class Work extends StatefulWidget {
  const Work({
    super.key,
  });

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> with SingleTickerProviderStateMixin {
  late AnimationController _customBtnController;
  late Animation<Offset> _customBtnSlide;

  bool btnHover = false;

  @override
  void initState() {
    super.initState();
    _customBtnController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));
    _customBtnSlide =
        Tween<Offset>(begin: const Offset(0, 0.5), end: Offset.zero)
            .animate(_customBtnController);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeanCodezBloc, SeanCodezState>(
        builder: (context, appState) {
      return SliverFixedExtentList(
        itemExtent: MediaQuery.of(context).size.height,
        delegate: SliverChildListDelegate(
          [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                    'assets/images/sunset.jpg',
                    fit: BoxFit.cover,
                  ),
                ).animate().fadeIn(
                      duration: 1000.ms,
                      curve: Curves.easeIn,
                    ),
                // AnimatedCrossFade(
                //   duration: 4000.ms,
                //   crossFadeState: appState.darkTheme
                //       ? CrossFadeState.showFirst
                //       : CrossFadeState.showSecond,
                //   firstChild: SizedBox(
                //     width: MediaQuery.of(context).size.width,
                //     height: MediaQuery.of(context).size.height,
                //     child: Image.asset(
                //       'assets/images/castle_valley_invert.png',
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                //   secondChild: SizedBox(
                //     width: MediaQuery.of(context).size.width,
                //     height: MediaQuery.of(context).size.height,
                //     child: Image.asset(
                //       'assets/images/castle_valley.jpg',
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                // ).animate().fadeIn(
                //       delay: 1000.ms,
                //       duration: 4000.ms,
                //       curve: Curves.easeIn,
                //     ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 60.0),
                            child: MediaQuery.of(context).size.width >
                                    tabletBreakpoint
                                ? SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.8,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: MouseRegion(
                                      onEnter: (event) {
                                        setState(
                                          () => btnHover = true,
                                        );
                                        _customBtnController.forward();
                                      },
                                      onExit: (event) {
                                        setState(
                                          () => btnHover = false,
                                        );
                                        _customBtnController.reverse();
                                      },
                                      child: Card(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground
                                            .withOpacity(0.7),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        clipBehavior: Clip.hardEdge,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Stack(
                                              children: [
                                                AspectRatio(
                                                  aspectRatio: 1.3,
                                                  child: Image.asset(
                                                    'assets/images/dmvans_proj.jpg',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: btnHover,
                                                  child: Center(
                                                    child: SlideTransition(
                                                      position: _customBtnSlide,
                                                      child: BottomCenter(
                                                        child: IconButton(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(
                                                            24.0,
                                                          ),
                                                          onPressed: () =>
                                                              VRouter.of(
                                                                      context)
                                                                  .toExternal(
                                                            'dmvans.com',
                                                            openNewTab: true,
                                                          ),
                                                          style: ButtonStyle(
                                                            elevation:
                                                                MaterialStateProperty
                                                                    .all<
                                                                        double>(
                                                              24.0,
                                                            ),
                                                            iconColor:
                                                                MaterialStateColor
                                                                    .resolveWith(
                                                              (states) => Theme
                                                                      .of(context)
                                                                  .primaryColorLight,
                                                            ),
                                                          ),
                                                          icon: const Icon(
                                                            Icons
                                                                .open_in_new_rounded,
                                                            size: 30,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  TopLeft(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Container(
                                                        height: 60,
                                                        width: 300,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(
                                                          16.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColorLight,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          'Dave and Matt Vans',
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .headlineSmall!
                                                              .copyWith(
                                                                color: Theme.of(
                                                                        context)
                                                                    .primaryColorLight,
                                                              ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              24.0),
                                                      child: SizedBox(
                                                        child: Text(
                                                          'A web app for a Camper Van manufacturing company located in Colorado. '
                                                          'The app is built with Flutter and Dart as well as many other technologies. '
                                                          'The tech stack chosen for this application allows for multiple apps to be built '
                                                          'from the same codebase. This is a critical feature enabling a single developer to build and maintain '
                                                          'the customer facing app as well as the internal app used by the sales team',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyLarge!
                                                                  .copyWith(
                                                                    color: Theme.of(
                                                                            context)
                                                                        .primaryColorLight
                                                                        .withOpacity(
                                                                            0.8),
                                                                  ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  BottomLeft(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Container(
                                                        height: 60,
                                                        width: 300,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(
                                                          16.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColorLight,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          'Built With',
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .headlineSmall!
                                                              .copyWith(
                                                                color: Theme.of(
                                                                        context)
                                                                    .primaryColorLight,
                                                              ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  BottomCenter(
                                                    child: Wrap(
                                                      spacing: 16.0,
                                                      runSpacing: 16.0,
                                                      alignment:
                                                          WrapAlignment.center,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .center,
                                                      children: [
                                                        const FlutterLogo(
                                                          style:
                                                              FlutterLogoStyle
                                                                  .horizontal,
                                                          size: 80,
                                                        ),
                                                        Image.asset(
                                                          'assets/dev_icons/dart_icon.png',
                                                          width: 72,
                                                        ),
                                                        Image.asset(
                                                          'assets/dev_icons/js_icon.png',
                                                          width: 30,
                                                        ),
                                                        Image.asset(
                                                          'assets/dev_icons/google_cloud_platform_icon.png',
                                                          width: 130,
                                                        ),
                                                        Image.asset(
                                                          'assets/dev_icons/firebase_icon.png',
                                                          width: 130,
                                                        ),
                                                        Image.asset(
                                                          'assets/dev_icons/hasura_icon_light.png',
                                                          width: 80,
                                                        ),
                                                        Image.asset(
                                                          'assets/dev_icons/shopify_icon.png',
                                                          width: 80,
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ).animate(delay: 1000.ms).fadeIn(
                                            duration: 2000.ms,
                                            curve: Curves.easeIn,
                                          ),
                                    ),
                                  )
                                : Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ConstrainedBox(
                                        constraints: BoxConstraints(
                                          maxHeight: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.5,
                                        ),
                                        child: AspectRatio(
                                          aspectRatio: 1,
                                          child: Image.asset(
                                            'assets/images/gambler.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Hi I\'m Sean',
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall!
                                              .copyWith(
                                                color: Theme.of(context)
                                                    .primaryColorLight,
                                              ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Divider(
                                        color:
                                            Theme.of(context).primaryColorLight,
                                        thickness: 1,
                                        height: 1,
                                        indent: 12,
                                        endIndent: 12,
                                      ),
                                      SizedBox(
                                        child: Padding(
                                          padding: const EdgeInsets.all(24.0),
                                          child: RichText(
                                            text: TextSpan(
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text:
                                                      'Three years ago I dreamt of working remotely to enable the freedom '
                                                      'to fill my life with as many meaningful experiences and adventures '
                                                      'as possible. I wanted to travel, explore, and climb all over the world '
                                                      'but was limited by my inability to work remotely. Friends and mentors '
                                                      'suggested I learn to code but I had no idea how I could possibly '
                                                      'accomplish this. I doubted my capability, I thought it was too late '
                                                      'to make such a drastic career change, and I didn\'t know where I would '
                                                      'find the time but eventually I came to the conclusion that I would no '
                                                      'longer determine what is possible based on circumstance but rather '
                                                      'adjust the circumstances until the goal becomes attainable. I have '
                                                      'applied this ideal to my education and the projects that I\'ve worked '
                                                      'on and that has lead me to a career in Software Engineering. I have been '
                                                      'very lucky to land in a position where I received one on one mentorship '
                                                      'from a very talented Senior Engineer for the first 8 months of my '
                                                      'professional career. This has accelerated my learning curve exponentially '
                                                      'and exposed me to so many technologies. I am now the lead Software Engineer '
                                                      'at Dave and Matt Vans where I develop and maintain ',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(
                                                        color: Theme.of(context)
                                                            .primaryColorLight,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: 'dmvans.com',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .inversePrimary,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                  recognizer:
                                                      TapGestureRecognizer()
                                                        ..onTap = () =>
                                                            VRouter.of(context)
                                                                .toExternal(
                                                              'https://dmvans.com/',
                                                              openNewTab: true,
                                                            ),
                                                ),
                                                TextSpan(
                                                  text: ' as well as an '
                                                      'internal application for the sales and production teams. I have learned and '
                                                      'grown so much through these first three years as a developer and my passion '
                                                      'for solving complex problems through elegant code continues to grow.',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(
                                                        color: Theme.of(context)
                                                            .primaryColorLight,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                          ),
                        ),
                      ),
                      MediaQuery.of(context).size.width > tabletBreakpoint
                          ? SizedBox(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60.0),
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.8,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: MouseRegion(
                                      onEnter: (event) {
                                        setState(
                                          () => btnHover = true,
                                        );
                                        _customBtnController.forward();
                                      },
                                      onExit: (event) {
                                        setState(
                                          () => btnHover = false,
                                        );
                                        _customBtnController.reverse();
                                      },
                                      child: Card(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onBackground
                                            .withOpacity(0.7),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        clipBehavior: Clip.hardEdge,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Stack(
                                              children: [
                                                AspectRatio(
                                                  aspectRatio: 1.3,
                                                  child: Image.asset(
                                                    'assets/images/floral_vibes.jpg',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: btnHover,
                                                  child: Center(
                                                    child: SlideTransition(
                                                      position: _customBtnSlide,
                                                      child: BottomCenter(
                                                        child: IconButton(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(
                                                            24.0,
                                                          ),
                                                          onPressed: () =>
                                                              VRouter.of(
                                                                      context)
                                                                  .toExternal(
                                                            'https://floral-vibez-dev.web.app/',
                                                            openNewTab: true,
                                                          ),
                                                          style: ButtonStyle(
                                                            elevation:
                                                                MaterialStateProperty
                                                                    .all<
                                                                        double>(
                                                              24.0,
                                                            ),
                                                            iconColor:
                                                                MaterialStateColor
                                                                    .resolveWith(
                                                              (states) => Theme
                                                                      .of(context)
                                                                  .primaryColorLight,
                                                            ),
                                                          ),
                                                          icon: const Icon(
                                                            Icons
                                                                .open_in_new_rounded,
                                                            size: 30,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  TopLeft(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Container(
                                                        height: 60,
                                                        width: 300,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(16.0),
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColorLight,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          'Floral Vibes',
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .headlineSmall!
                                                              .copyWith(
                                                                color: Theme.of(
                                                                        context)
                                                                    .primaryColorLight,
                                                              ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              24.0),
                                                      child: SizedBox(
                                                        child: Text(
                                                          'Floral Vibes is an E-commerce shop for retail florist products. '
                                                          'This app is still in progress but will soon be leveraged to provide '
                                                          'another sales channel for an already growing business. The website will '
                                                          'utilize event tracking to provide insights into customer behavior and allow '
                                                          'for targeted marketing campaigns.',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyLarge!
                                                                  .copyWith(
                                                                    color: Theme.of(
                                                                            context)
                                                                        .primaryColorLight
                                                                        .withOpacity(
                                                                            0.8),
                                                                  ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  BottomLeft(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Container(
                                                        height: 60,
                                                        width: 300,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(16.0),
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColorLight,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          'Built With',
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .headlineSmall!
                                                              .copyWith(
                                                                color: Theme.of(
                                                                        context)
                                                                    .primaryColorLight,
                                                              ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  BottomCenter(
                                                    child: Wrap(
                                                      spacing: 16.0,
                                                      runSpacing: 16.0,
                                                      alignment:
                                                          WrapAlignment.center,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .center,
                                                      children: [
                                                        const FlutterLogo(
                                                          style:
                                                              FlutterLogoStyle
                                                                  .horizontal,
                                                          size: 80,
                                                        ),
                                                        Image.asset(
                                                          'assets/dev_icons/dart_icon.png',
                                                          width: 72,
                                                        ),
                                                        Image.asset(
                                                          'assets/dev_icons/js_icon.png',
                                                          width: 30,
                                                        ),
                                                        Image.asset(
                                                          'assets/dev_icons/google_cloud_platform_icon.png',
                                                          width: 130,
                                                        ),
                                                        Image.asset(
                                                          'assets/dev_icons/firebase_icon.png',
                                                          width: 130,
                                                        ),
                                                        Image.asset(
                                                          'assets/dev_icons/shopify_icon.png',
                                                          width: 80,
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ).animate(delay: 1000.ms).fadeIn(
                                            duration: 2000.ms,
                                            curve: Curves.easeIn,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Stack(
                                  children: [
                                    AspectRatio(
                                      aspectRatio: 1.3,
                                      child: Image.asset(
                                        'assets/images/floral_vibes.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    BottomLeft(
                                      child: IconButton(
                                        padding: const EdgeInsets.all(
                                          24.0,
                                        ),
                                        onPressed: () =>
                                            VRouter.of(context).toExternal(
                                          'https://floral-vibez-dev.web.app/',
                                          openNewTab: true,
                                        ),
                                        style: ButtonStyle(
                                          elevation:
                                              MaterialStateProperty.all<double>(
                                            24.0,
                                          ),
                                          iconColor:
                                              MaterialStateColor.resolveWith(
                                            (states) => Theme.of(context)
                                                .primaryColorLight,
                                          ),
                                        ),
                                        icon: const Icon(
                                          Icons.open_in_new_rounded,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  TopLeft(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Container(
                                                        height: 60,
                                                        width: 300,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(16.0),
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColorLight,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          'Floral Vibes',
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .headlineSmall!
                                                              .copyWith(
                                                                color: Theme.of(
                                                                        context)
                                                                    .primaryColorLight,
                                                              ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Center(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              24.0),
                                                      child: SizedBox(
                                                        child: Text(
                                                          'Floral Vibes is an E-commerce shop for retail florist products. '
                                                          'This app is still in progress but will soon be leveraged to provide '
                                                          'another sales channel for an already growing business. The website will '
                                                          'utilize event tracking to provide insights into customer behavior and allow '
                                                          'for targeted marketing campaigns.',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyLarge!
                                                                  .copyWith(
                                                                    color: Theme.of(
                                                                            context)
                                                                        .primaryColorLight
                                                                        .withOpacity(
                                                                            0.8),
                                                                  ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  BottomLeft(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Container(
                                                        height: 60,
                                                        width: 300,
                                                        padding:
                                                            const EdgeInsets
                                                                .all(16.0),
                                                        decoration:
                                                            BoxDecoration(
                                                          border: Border(
                                                            bottom: BorderSide(
                                                              color: Theme.of(
                                                                      context)
                                                                  .primaryColorLight,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          'Built With',
                                                          style: Theme.of(
                                                                  context)
                                                              .textTheme
                                                              .headlineSmall!
                                                              .copyWith(
                                                                color: Theme.of(
                                                                        context)
                                                                    .primaryColorLight,
                                                              ),
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  BottomCenter(
                                                    child: Wrap(
                                                      spacing: 16.0,
                                                      runSpacing: 16.0,
                                                      alignment:
                                                          WrapAlignment.center,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .center,
                                                      children: [
                                                        const FlutterLogo(
                                                          style:
                                                              FlutterLogoStyle
                                                                  .horizontal,
                                                          size: 80,
                                                        ),
                                                        Image.asset(
                                                          'assets/dev_icons/dart_icon.png',
                                                          width: 72,
                                                        ),
                                                        Image.asset(
                                                          'assets/dev_icons/js_icon.png',
                                                          width: 30,
                                                        ),
                                                        Image.asset(
                                                          'assets/dev_icons/google_cloud_platform_icon.png',
                                                          width: 130,
                                                        ),
                                                        Image.asset(
                                                          'assets/dev_icons/firebase_icon.png',
                                                          width: 130,
                                                        ),
                                                        Image.asset(
                                                          'assets/dev_icons/shopify_icon.png',
                                                          width: 80,
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                              ],
                            ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }

  @override
  void dispose() {
    _customBtnController.dispose();
    super.dispose();
  }
}
