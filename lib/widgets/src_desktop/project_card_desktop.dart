import 'package:extra_alignments/extra_alignments.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:sean_codez/app/app.dart';
import 'package:vrouter/vrouter.dart';

class ProjectCardDesktop extends StatefulWidget {
  const ProjectCardDesktop({
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
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.9,
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
                          aspectRatio: 1.5,
                          child: Image.asset(
                            widget.imagePath,
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
                                  padding: const EdgeInsets.all(24.0),
                                  onPressed: () =>
                                      VRouter.of(context).toExternal(
                                    widget.urlString,
                                    openNewTab: true,
                                  ),
                                  style: ButtonStyle(
                                    elevation:
                                        MaterialStateProperty.all<double>(
                                      24.0,
                                    ),
                                    iconColor: MaterialStateColor.resolveWith(
                                      (states) =>
                                          Theme.of(context).primaryColorLight,
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
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TopLeft(
                              child: Container(
                                height: 40,
                                width: 280,
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  bottom: 8.0,
                                  left: 24.0,
                                ),
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
                                  widget.title,
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
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  right: 24.0,
                                  bottom: 8.0,
                                  left: 24.0,
                                ),
                                child: SizedBox(
                                  child: Text(
                                    widget.description,
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
                            if (MediaQuery.of(context).size.width >
                                desktopBreakpoint)
                              const SizedBox(
                                height: 50,
                              ),
                            BottomLeft(
                              child: Container(
                                height: 40,
                                width: 180,
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  bottom: 8.0,
                                  left: 24.0,
                                ),
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
                            BottomCenter(
                              child: Wrap(
                                spacing: MediaQuery.of(context).size.width >
                                        desktopBreakpoint
                                    ? 80.0
                                    : 16.0,
                                runSpacing: 16.0,
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: widget.devIcons,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ).animate(delay: 1600.ms).fadeIn(
                duration: 3400.ms,
                curve: Curves.easeIn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
