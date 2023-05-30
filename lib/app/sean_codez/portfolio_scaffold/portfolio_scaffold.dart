import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:sean_codez/apps/sean_codez/vibes_scaffold/nav_drawer/nav_drawer.dart';
import 'package:flutter/material.dart' hide NavigationDrawer;
import 'package:inview_notifier_list/inview_notifier_list.dart';
import 'package:sean_codez/blocs/blocs.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'package:vrouter/vrouter.dart';

class PortfolioScaffold extends StatefulWidget {
  const PortfolioScaffold({
    Key? key,
    required this.page,
    required this.title,
    this.hideFooter = false,
  }) : super(key: key);

  final Widget page;
  final String title;
  final bool hideFooter;
  @override
  _PortfolioScaffoldState createState() => _PortfolioScaffoldState();
}

class _PortfolioScaffoldState extends State<PortfolioScaffold> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.9),
        shape: Border(
          bottom: BorderSide(
            color: Theme.of(context).primaryColorLight,
            width: 1,
          ),
        ),
        toolbarHeight: 60,
        leadingWidth: 80,
        leading: TextButton(
          onPressed: () {
            VRouter.of(context).to('/');
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.resolveWith(
              (states) => Colors.transparent,
            ),
          ),
          child: Text(
            'SD',
            softWrap: false,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).primaryColorLight,
                ),
          ),
        ),
        actions: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                TextButton(
                  onPressed: () {
                    VRouter.of(context).to('/work');
                  },
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.transparent,
                    ),
                  ),
                  child: Text(
                    'Work',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).primaryColorLight,
                        ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    VRouter.of(context).to('/about');
                  },
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.transparent,
                    ),
                  ),
                  child: Text(
                    'About',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).primaryColorLight,
                        ),
                  ),
                ),
                // TextButton(
                //   onPressed: () {
                //     VRouter.of(context).to('/contact');
                //   },
                //   style: ButtonStyle(
                //     overlayColor: MaterialStateProperty.resolveWith(
                //       (states) => Colors.transparent,
                //     ),
                //   ),
                //   child: Text(
                //     'Contact',
                //     style: Theme.of(context).textTheme.titleLarge!.copyWith(
                //           color: Theme.of(context).primaryColorLight,
                //         ),
                //   ),
                // ),
              ],
            ),
          ),
          const ThemeToggle()
        ],
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(12),
            thumbColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.hovered)) {
                return Theme.of(context).primaryColor.withOpacity(1);
              } else {
                return Theme.of(context).primaryColor.withOpacity(0.8);
              }
            }),
          ),
        ),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
            dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch,
            },
          ),
          child: PrimaryScrollController(
            controller: _scrollController,
            child: Stack(
              children: [
                InViewNotifierCustomScrollView(
                  controller: _scrollController,
                  isInViewPortCondition:
                      (deltaTop, deltaBottom, viewPortDimension) =>
                          deltaTop < (0.75 * viewPortDimension),
                  slivers: [
                    SliverStack(
                      children: [
                        MultiSliver(
                          children: [
                            widget.page,
                            // if (widget.hideFooter == false) const Footer(),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ThemeToggle extends StatefulWidget {
  const ThemeToggle({Key? key}) : super(key: key);

  @override
  _ThemeToggleState createState() => _ThemeToggleState();
}

class _ThemeToggleState extends State<ThemeToggle> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeanCodezBloc, SeanCodezState>(
        builder: (context, appState) {
      return IconButton(
        onPressed: () => BlocProvider.of<SeanCodezBloc>(context).add(
          ToggleTheme(
            darkTheme: appState.darkTheme ? false : true,
          ),
        ),
        icon: appState.darkTheme
            ? FaIcon(
                FontAwesomeIcons.lightbulb,
                color: Theme.of(context).primaryColorLight,
              )
            : FaIcon(
                FontAwesomeIcons.moon,
                color: Theme.of(context).primaryColorLight,
              ),
      );
    });
  }
}
