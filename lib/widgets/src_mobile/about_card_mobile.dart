import 'package:extra_alignments/extra_alignments.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sean_codez/app/app.dart';
import 'package:vrouter/vrouter.dart';

class AboutCardMobile extends StatefulWidget {
  const AboutCardMobile({
    super.key,
  });

  @override
  State<AboutCardMobile> createState() => _AboutCardMobileState();
}

class _AboutCardMobileState extends State<AboutCardMobile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.5,
                ),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    'assets/images/gambler.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              TopLeft(
                child: Container(
                  height: 40,
                  width: 300,
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    bottom: 8.0,
                    left: 24.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Theme.of(context).primaryColorLight,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Text(
                    'Hi I\'m Sean',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Theme.of(context).primaryColorLight,
                        ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0,
                    right: 24.0,
                    bottom: 8.0,
                    left: 24.0,
                  ),
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
                                color:
                                    Theme.of(context).primaryColorLight,
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
                                decoration: TextDecoration.underline,
                              ),
                          recognizer: TapGestureRecognizer()
                            ..onTap =
                                () => VRouter.of(context).toExternal(
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
                                color:
                                    Theme.of(context).primaryColorLight,
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
      ).animate(delay: 1800.ms).fadeIn(
                duration: 3400.ms,
                curve: Curves.easeIn,
              ),
    );
  }
}
