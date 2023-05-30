import 'package:extra_alignments/extra_alignments.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:vrouter/vrouter.dart';

class ProjectCardDesktop extends StatefulWidget {
  const ProjectCardDesktop({
    super.key,
  });

  @override
  State<ProjectCardDesktop> createState() => _ProjectCardDesktopState();
}

class _ProjectCardDesktopState extends State<ProjectCardDesktop>
    with SingleTickerProviderStateMixin {
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
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 0.8,
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
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.hardEdge,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        AspectRatio(
                          aspectRatio: 1,
                          child: Image.asset(
                            'assets/images/dmvans_proj.jpg',
                            fit: BoxFit.cover,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                        Visibility(
                          visible: btnHover,
                          child: Center(
                            child: SlideTransition(
                              position: _customBtnSlide,
                              child: BottomCenter(
                                child: IconButton(
                                  padding: const EdgeInsets.all(24.0),
                                  onPressed: () => VRouter.of(context).toExternal(
                                    'dmvans.com',
                                    openNewTab: true,
                                  ),
                                  style: ButtonStyle(
                                    elevation: MaterialStateProperty.all<double>(
                                      24.0,
                                    ),
                                    iconColor: MaterialStateColor.resolveWith(
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
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TopLeft(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 60,
                                width: 300,
                                padding: const EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color:
                                          Theme.of(context).primaryColorLight,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Dave and Matt Vans',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                        color:
                                            Theme.of(context).primaryColorLight,
                                      ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: SizedBox(
                                child: Text(
                                  'A web app for a Camper Van manufacturing company located in Colorado. '
                                  'The app is built with Flutter and Dart as well as many other technologies. '
                                  'The tech stack chosen for this application allows for multiple apps to be built '
                                  'from the same codebase. This is a critical feature enabling a single developer to build and maintain '
                                  'the customer facing app as well as the internal app used by the sales team for creating and '
                                  'updating van configurations and once confirmed sending those configurations to the manufacturing team.',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .primaryColorLight
                                            .withOpacity(0.8),
                                      ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          BottomLeft(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 60,
                                width: 300,
                                padding: const EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color:
                                          Theme.of(context).primaryColorLight,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'Built With',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                        color:
                                            Theme.of(context).primaryColorLight,
                                      ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                          ),
                          BottomCenter(
                            child: Wrap(
                              spacing: 16.0,
                              runSpacing: 16.0,
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                const FlutterLogo(
                                  style: FlutterLogoStyle.horizontal,
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
          ),
        ),
      ),
    );
  }
}
