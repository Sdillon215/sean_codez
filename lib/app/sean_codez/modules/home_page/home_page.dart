import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sean_codez/app/app.dart';
import 'package:sean_codez/blocs/blocs.dart';
import 'package:sean_codez/widgets/widgets.dart';
import 'package:vrouter/vrouter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    'assets/images/j_tree.jpg',
                    fit: BoxFit.cover,
                  ),
                ).animate().fadeIn(
                      duration: 800.ms,
                      curve: Curves.easeIn,
                    ),
                AnimatedCrossFade(
                  duration: 2800.ms,
                  crossFadeState: appState.darkTheme
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  firstChild: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset(
                      'assets/images/j_tree_invert.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  secondChild: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset(
                      'assets/images/j_tree.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ).animate().fadeIn(
                      delay: 500.ms,
                      duration: 2800.ms,
                      curve: Curves.easeIn,
                    ),
                Align(
                  alignment: const Alignment(0, -0.4),
                  child: SizedBox(
                    key: UniqueKey(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Sean Dillon',
                          style: MediaQuery.of(context).size.width <
                                  mobileBreakpoint
                              ? Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    color: Theme.of(context).primaryColorLight,
                                  )
                              : Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                    color: Theme.of(context).primaryColorLight,
                                  ),
                        ).animate(delay: 2800.ms).slide(
                                    begin: const Offset(0, -12),
                                    duration: 1000.ms,
                                    curve: Curves.fastEaseInToSlowEaseOut,
                                  ),
                        Text(
                          'Nomad | Full Stack Engineer | Climber',
                          style: MediaQuery.of(context).size.width <
                                  mobileBreakpoint
                              ? Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                    color: Theme.of(context).primaryColorLight,
                                  )
                              : Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                    color: Theme.of(context).primaryColorLight,
                                  ),
                        ).animate(delay: 2900.ms).slide(
                                    begin: const Offset(12, 0),
                                    duration: 1000.ms,
                                    curve: Curves.fastEaseInToSlowEaseOut,
                                  ),
                        Divider(
                          color: Theme.of(context).primaryColorLight,
                          thickness: 1,
                          height: 48,
                          indent: MediaQuery.of(context).size.width <
                                  tabletBreakpoint
                              ? MediaQuery.of(context).size.width * 0.05
                              : MediaQuery.of(context).size.width * 0.3,
                          endIndent: MediaQuery.of(context).size.width <
                                  tabletBreakpoint
                              ? MediaQuery.of(context).size.width * 0.05
                              : MediaQuery.of(context).size.width * 0.3,
                        ).animate(delay: 3000.ms).slide(
                                    begin: const Offset(-12, 0),
                                    duration: 1000.ms,
                                    curve: Curves.fastEaseInToSlowEaseOut,
                                  ),
                        Flex(
                          direction: MediaQuery.of(context).size.width >
                                  tabletBreakpoint
                              ? Axis.horizontal
                              : Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AnimatedButton(
                                btnText: 'View My Work',
                                onPressed: () {
                                  VRouter.of(context).to('/work');
                                },
                              ).animate(delay: 3000.ms).slide(
                                    begin: const Offset(0, 20),
                                    duration: 1000.ms,
                                    curve: Curves.fastEaseInToSlowEaseOut,
                                  ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AnimatedButton(
                                btnText: 'About Me',
                                onPressed: () {
                                  VRouter.of(context).to('/about');
                                },
                              ).animate(delay: 3200.ms).slide(
                                    begin: const Offset(0, 20),
                                    duration: 1000.ms,
                                    curve: Curves.fastEaseInToSlowEaseOut,
                                  ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AnimatedButton(
                                btnText: 'Contact',
                                onPressed: () {
                                  VRouter.of(context).to('/contact');
                                },
                              ).animate(delay: 3400.ms).slide(
                                    begin: const Offset(0, 20),
                                    duration: 1000.ms,
                                    curve: Curves.fastEaseInToSlowEaseOut,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ).animate().fadeIn(
                      duration: 5000.ms,
                      curve: Curves.easeIn,
                    ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
