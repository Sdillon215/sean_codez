import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sean_codez/app/app.dart';
import 'package:sean_codez/blocs/blocs.dart';
import 'package:sean_codez/widgets/widgets.dart';

class Work extends StatefulWidget {
  const Work({
    super.key,
  });

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
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
                              imagePath: 'assets/images/dmvans_proj.png',
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
                                ).animate(delay: 3200.ms).slide(
                                      begin: const Offset(0, 8),
                                      duration: 1000.ms,
                                      curve: Curves.fastEaseInToSlowEaseOut,
                                    ),
                                const DartIcon().animate(delay: 3400.ms).slide(
                                      begin: const Offset(0, 8),
                                      duration: 1000.ms,
                                      curve: Curves.fastEaseInToSlowEaseOut,
                                    ),
                                const JsIcon().animate(delay: 3600.ms).slide(
                                      begin: const Offset(0, 8),
                                      duration: 1000.ms,
                                      curve: Curves.fastEaseInToSlowEaseOut,
                                    ),
                                const GcpIcon().animate(delay: 3800.ms).slide(
                                      begin: const Offset(0, 8),
                                      duration: 1000.ms,
                                      curve: Curves.fastEaseInToSlowEaseOut,
                                    ),
                                const Ga4Icon().animate(delay: 4000.ms).slide(
                                      begin: const Offset(0, 8),
                                      duration: 1000.ms,
                                      curve: Curves.fastEaseInToSlowEaseOut,
                                    ),
                                const FirebaseIcon()
                                    .animate(delay: 4200.ms)
                                    .slide(
                                      begin: const Offset(0, 8),
                                      duration: 1000.ms,
                                      curve: Curves.fastEaseInToSlowEaseOut,
                                    ),
                                const ShopifyIcon()
                                    .animate(delay: 4400.ms)
                                    .slide(
                                      begin: const Offset(0, 8),
                                      duration: 1000.ms,
                                      curve: Curves.fastEaseInToSlowEaseOut,
                                    ),
                                const HasuraIcon()
                                    .animate(delay: 4600.ms)
                                    .slide(
                                      begin: const Offset(0, 8),
                                      duration: 1000.ms,
                                      curve: Curves.fastEaseInToSlowEaseOut,
                                    ),
                              ],
                            ),
                            ProjectCardDesktop(
                              title: 'Floral Vibes',
                              imagePath: 'assets/images/floral_vibes.jpg',
                              urlString: 'https://floral-vibez-dev.web.app/',
                              description:
                                  'Floral Vibes is an E-commerce shop for home floral products. '
                                  'This app is still in progress but will soon provide '
                                  'another sales channel for an already growing business. The website will '
                                  'utilize event tracking to deliver insights into customer behavior and allow '
                                  'for targeted ad campaigns via Google Analytics, Meta, etc. Also leveraging an '
                                  'integration with Shopify to handle inventory, payment processing, and shipping '
                                  'this app will soon be a simple yet robust sales platform.',
                              devIcons: [
                                const FlutterLogo(
                                  style: FlutterLogoStyle.horizontal,
                                  size: 80,
                                ).animate(delay: 3200.ms).slide(
                                      begin: const Offset(0, 8),
                                      duration: 1000.ms,
                                      curve: Curves.fastEaseInToSlowEaseOut,
                                    ),
                                const DartIcon().animate(delay: 3400.ms).slide(
                                      begin: const Offset(0, 8),
                                      duration: 1000.ms,
                                      curve: Curves.fastEaseInToSlowEaseOut,
                                    ),
                                const JsIcon().animate(delay: 3600.ms).slide(
                                      begin: const Offset(0, 8),
                                      duration: 1000.ms,
                                      curve: Curves.fastEaseInToSlowEaseOut,
                                    ),
                                const GcpIcon().animate(delay: 3800.ms).slide(
                                      begin: const Offset(0, 8),
                                      duration: 1000.ms,
                                      curve: Curves.fastEaseInToSlowEaseOut,
                                    ),
                                const Ga4Icon().animate(delay: 4000.ms).slide(
                                      begin: const Offset(0, 8),
                                      duration: 1000.ms,
                                      curve: Curves.fastEaseInToSlowEaseOut,
                                    ),
                                const FirebaseIcon()
                                    .animate(delay: 4200.ms)
                                    .slide(
                                      begin: const Offset(0, 8),
                                      duration: 1000.ms,
                                      curve: Curves.fastEaseInToSlowEaseOut,
                                    ),
                                const ShopifyIcon()
                                    .animate(delay: 4400.ms)
                                    .slide(
                                      begin: const Offset(0, 8),
                                      duration: 1000.ms,
                                      curve: Curves.fastEaseInToSlowEaseOut,
                                    ),
                              ],
                            ),
                          ]
                        : [
                            const ProjectCardMobile(
                              title: 'Dave and Matt Vans',
                              imagePath: 'assets/images/dmvans_proj.png',
                              urlString: 'https://dmvans.com',
                              description:
                                  'A web app for a Camper Van manufacturing company located in Colorado. '
                                  'The app is built with Flutter and Dart as well as many other technologies. '
                                  'The tech stack chosen for this application allows for multiple apps to be built '
                                  'from the same codebase. This is a critical feature enabling a single developer to build and maintain '
                                  'the customer facing app as well as the internal app used by the sales team for creating and '
                                  'updating van configurations and once confirmed sending those configurations to the manufacturing team.',
                              devIcons: [
                                JsIcon(),
                                GcpIcon(),
                                Ga4Icon(),
                                FirebaseIcon(),
                                ShopifyIcon(),
                                HasuraIcon(),
                                FlutterLogo(
                                  style: FlutterLogoStyle.horizontal,
                                  size: 80,
                                ),
                                DartIcon(),
                              ],
                            ),
                            const ProjectCardMobile(
                              title: 'Floral Vibes',
                              imagePath: 'assets/images/floral_vibes.jpg',
                              urlString: 'https://floral-vibez-dev.web.app/',
                              description:
                                  'Floral Vibes is an E-commerce shop for home floral products. '
                                  'This app is still in progress but will soon provide '
                                  'another sales channel for an already growing business. The website will '
                                  'utilize event tracking to deliver insights into customer behavior and allow '
                                  'for targeted ad campaigns via Google Analytics, Meta, etc. Also leveraging an '
                                  'integration with Shopify to handle inventory, payment processing, and shipping '
                                  'this app will soon be a simple yet robust sales platform.',
                              devIcons: [
                                JsIcon(),
                                GcpIcon(),
                                Ga4Icon(),
                                FirebaseIcon(),
                                ShopifyIcon(),
                                FlutterLogo(
                                  style: FlutterLogoStyle.horizontal,
                                  size: 80,
                                ),
                                DartIcon(),
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
}
