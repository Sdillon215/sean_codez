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

class _ProjectCardDesktopState extends State<ProjectCardDesktop> {
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
                  AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(
                      'assets/images/dmvans_proj.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        TopLeft(
                          child: Container(
                            width: 400,
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Theme.of(context).primaryColorLight,
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Text(
                              'Dave and Matt Vans',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    color: Theme.of(context).primaryColorLight,
                                  ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(24.0),
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
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        BottomCenter(
                          child: Wrap(
                            spacing: 8.0,
                            runSpacing: 8.0,
                            children: [
                              Chip(
                                
                                label: Text('Flutter'),
                              ),
                              Chip(
                                label: Text('Flutter'),
                              ),
                              Chip(
                                label: Text('Flutter'),
                              ),
                              Chip(
                                label: Text('Flutter'),
                              ),
                              Chip(
                                label: Text('Flutter'),
                              ),
                              Chip(
                                label: Text('Flutter'),
                              ),
                              Chip(
                                label: Text('Flutter'),
                              ),
                              Chip(
                                label: Text('Flutter'),
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
                  duration: 4000.ms,
                  curve: Curves.easeIn,
                ),
          ),
        ),
      ),
    );
  }
}
