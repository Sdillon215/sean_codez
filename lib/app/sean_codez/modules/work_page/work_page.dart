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
                    'assets/images/voo_sunset.jpg',
                    fit: BoxFit.cover,
                  ),
                ).animate().fadeIn(
                      duration: 1000.ms,
                      curve: Curves.easeIn,
                    ),
                AnimatedCrossFade(
                  duration: 3000.ms,
                  crossFadeState: appState.darkTheme
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  firstChild: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset(
                      'assets/images/voo_sunset_invert.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  secondChild: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset(
                      'assets/images/voo_sunset.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ).animate().fadeIn(
                      delay: 500.ms,
                      duration: 3000.ms,
                      curve: Curves.easeIn,
                    ),
                SingleChildScrollView(
                  child: Column(
                    children: MediaQuery.of(context).size.width >
                            tabletBreakpoint
                        ? [
                            ProjectCardDesktop(
                              title: 'Dave and Matt Vans',
                              imagePath: 'assets/images/dmvans_proj.jpg',
                              urlString: 'https://dmvans.com',
                              description:
                                  'A web app for a Camper Van manufacturing company located in Colorado. '
                                  'The app is built with Flutter and Dart as well as many other technologies. '
                                  'The tech stack chosen for this application allows for multiple apps to be built '
                                  'from the same codebase. This is a critical feature enabling a single developer to build and maintain '
                                  'the customer facing app as well as the internal app used by the sales team for creating and '
                                  'updating van configurations and once confirmed sending those configurations to the manufacturing team.',
                              devIcons: [
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
                            ProjectCardDesktop(
                              title: 'Floral Vibes',
                              imagePath: 'assets/images/floral_vibes.jpg',
                              urlString: 'https://floral-vibez-dev.web.app/',
                              description:
                                  'Floral Vibes is an E-commerce shop for retail florist products. '
                                  'This app is still in progress but will soon be leveraged to provide '
                                  'another sales channel for an already growing business. The website will '
                                  'utilize event tracking to provide insights into customer behavior and allow '
                                  'for targeted marketing campaigns.',
                              devIcons: [
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
                                  'assets/dev_icons/shopify_icon.png',
                                  width: 80,
                                ),
                              ],
                            ),
                          ]
                        : [
                            ProjectCardMobile(
                              title: 'Dave and Matt Vans',
                              imagePath: 'assets/images/dmvans_proj.jpg',
                              urlString: 'https://dmvans.com',
                              description:
                                  'A web app for a Camper Van manufacturing company located in Colorado. '
                                  'The app is built with Flutter and Dart as well as many other technologies. '
                                  'The tech stack chosen for this application allows for multiple apps to be built '
                                  'from the same codebase. This is a critical feature enabling a single developer to build and maintain '
                                  'the customer facing app as well as the internal app used by the sales team for creating and '
                                  'updating van configurations and once confirmed sending those configurations to the manufacturing team.',
                              devIcons: [
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
                                const FlutterLogo(
                                  style: FlutterLogoStyle.horizontal,
                                  size: 80,
                                ),
                                Image.asset(
                                  'assets/dev_icons/dart_icon.png',
                                  width: 72,
                                ),
                              ],
                            ),
                            ProjectCardMobile(
                              title: 'Floral Vibes',
                              imagePath: 'assets/images/floral_vibes.jpg',
                              urlString: 'https://floral-vibez-dev.web.app/',
                              description:
                                  'Floral Vibes is an E-commerce shop for retail florist products. '
                                  'This app is still in progress but will soon be leveraged to provide '
                                  'another sales channel for an already growing business. The website will '
                                  'utilize event tracking to provide insights into customer behavior and allow '
                                  'for targeted marketing campaigns.',
                              devIcons: [
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
                                const FlutterLogo(
                                  style: FlutterLogoStyle.horizontal,
                                  size: 80,
                                ),
                                Image.asset(
                                  'assets/dev_icons/dart_icon.png',
                                  width: 72,
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
