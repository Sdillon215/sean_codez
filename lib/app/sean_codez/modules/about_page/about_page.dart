import 'package:extra_alignments/extra_alignments.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sean_codez/app/app.dart';
import 'package:sean_codez/blocs/blocs.dart';
import 'package:sean_codez/widgets/widget.dart';
import 'package:vrouter/vrouter.dart';

class About extends StatefulWidget {
  const About({
    super.key,
  });

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
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
                    'assets/images/castle_valley.jpg',
                    fit: BoxFit.cover,
                  ),
                ).animate().fadeIn(
                      duration: 1000.ms,
                      curve: Curves.easeIn,
                    ),
                AnimatedCrossFade(
                  duration: 4000.ms,
                  crossFadeState: appState.darkTheme
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  firstChild: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset(
                      'assets/images/castle_valley_invert.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  secondChild: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset(
                      'assets/images/castle_valley.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ).animate().fadeIn(
                      delay: 1000.ms,
                      duration: 4000.ms,
                      curve: Curves.easeIn,
                    ),
                // Align(
                //   alignment: const Alignment(0, -0.0),
                //   child: SizedBox(
                //     key: UniqueKey(),
                //     child: Row(
                //       mainAxisSize: MainAxisSize.min,
                //       children: [
                //         SizedBox(
                //           height: 400,
                //           child: Stack(
                //             children: [
                //               AspectRatio(
                //                 aspectRatio: 1,
                //                 child: Image.asset(
                //                   'assets/images/gambler.jpg',
                //                   fit: BoxFit.cover,
                //                 ),
                //               ).animate().fadeIn(
                //                     duration: 4000.ms,
                //                     curve: Curves.easeIn,
                //                   ),
                //               BottomLeft(
                //                 child: Text(
                //                   'Red Rock Canyon, Las Vegas, NV',
                //                   style: Theme.of(context)
                //                       .textTheme
                //                       .labelSmall!
                //                       .copyWith(
                //                         color:
                //                             Theme.of(context).primaryColorLight,
                //                       ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //         Container(
                //           height: 400,
                //           width: 400,
                //           color: Theme.of(context).primaryColor,
                //           child: Padding(
                //             padding: const EdgeInsets.all(8.0),
                //             child: RichText(
                //               text: TextSpan(
                //                 children: <TextSpan>[
                //                   TextSpan(
                //                     text:
                //                         'Three years ago I dreamt of working remotely to enable the freedom '
                //                         'to fill my life with as many meaningful experiences and adventures '
                //                         'as possible. I wanted to travel, explore, and climb all over the world '
                //                         'but was limited by my inability to work remotely. Friends and mentors '
                //                         'suggested I learn to code but I had no idea how I could possibly '
                //                         'accomplish this. I doubted my capability, I thought it was too late '
                //                         'to make such a drastic career change, and I didn\'t know where I would '
                //                         'find the time but eventually I came to the conclusion that I would no '
                //                         'longer determine what is possible based on circumstance but rather '
                //                         'adjust the circumstances until the goal becomes attainable. I have '
                //                         'applied this ideal to my education and the projects that I\'ve worked '
                //                         'on and that has lead me to a career in Software Engineering. I have been '
                //                         'very lucky to land in a position where I received one on one mentorship '
                //                         'from a very talented Senior Engineer for the first 8 months of my '
                //                         'professional career. This has accelerated my learning curve exponentially '
                //                         'and exposed me to so many technologies. I am now the lead Software Engineer '
                //                         'at Dave and Matt Vans where I develop and maintain ',
                //                     style: Theme.of(context)
                //                         .textTheme
                //                         .bodyMedium!
                //                         .copyWith(
                //                           color:
                //                               Theme.of(context).primaryColorLight,
                //                         ),
                //                   ),
                //                   TextSpan(
                //                     text: 'dmvans.com',
                //                     style: Theme.of(context)
                //                         .textTheme
                //                         .bodyMedium!
                //                         .copyWith(
                //                           color:
                //                               Theme.of(context).primaryColorLight,
                //                           decoration: TextDecoration.underline,
                //                         ),
                //                     recognizer: TapGestureRecognizer()
                //                       ..onTap =
                //                           () => VRouter.of(context).toExternal(
                //                                 'https://dmvans.com/',
                //                                 openNewTab: true,
                //                               ),
                //                   ),
                //                   TextSpan(
                //                     text: ' as well as an '
                //                         'internal application for the sales and production teams. I have learned and '
                //                         'grown so much through these first three years as a developer and my passion '
                //                         'for solving complex problems through elegant code continues to grow.',
                //                     style: Theme.of(context)
                //                         .textTheme
                //                         .bodyMedium!
                //                         .copyWith(
                //                           color:
                //                               Theme.of(context).primaryColorLight,
                //                         ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ).animate().fadeIn(
                //       duration: 5000.ms,
                //       curve: Curves.easeIn,
                //     ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
