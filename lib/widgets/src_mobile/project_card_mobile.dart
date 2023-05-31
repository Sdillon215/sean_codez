import 'package:extra_alignments/extra_alignments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sean_codez/app/app.dart';
import 'package:vrouter/vrouter.dart';

class ProjectCardMobile extends StatefulWidget {
  const ProjectCardMobile({
    super.key,
    required this.imagePath,
    required this.urlString,
    required this.title,
    required this.description,
    required this.devIcons,
  });

  final String imagePath;
  final String urlString;
  final String title;
  final String description;
  final List<Widget> devIcons;
  @override
  State<ProjectCardMobile> createState() => _ProjectCardMobileState();
}

class _ProjectCardMobileState extends State<ProjectCardMobile> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 68.0,
          right: 16.0,
          bottom: 16.0,
          left: 16.0,
        ),
        child: Card(
          color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          clipBehavior: Clip.hardEdge,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                    Stack(
                      children: [
                        AspectRatio(
                          aspectRatio: 1.5,
                          child: Image.asset(
                            widget.imagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                        TopRight(
                          child: IconButton(
                            padding: const EdgeInsets.all(24.0),
                            onPressed: () => VRouter.of(context).toExternal(
                              widget.urlString,
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
                      ],
                    ),
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
                          color: Theme.of(context).primaryColorLight,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Text(
                      widget.title,
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Theme.of(context).primaryColorLight,
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
                      widget.description,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context)
                                .primaryColorLight
                                .withOpacity(0.8),
                          ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
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
                          color: Theme.of(context).primaryColorLight,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Text(
                      'Built With',
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Theme.of(context).primaryColorLight,
                              ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: widget.devIcons,
              ),
            ],
          ),
        ).animate(delay: 2000.ms).fadeIn(
              duration: 4000.ms,
              curve: Curves.easeIn,
            ),
      ),
    );
  }
}
