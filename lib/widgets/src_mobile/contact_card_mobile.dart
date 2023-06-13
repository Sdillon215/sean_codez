import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sean_codez/blocs/blocs.dart';
import 'package:sean_codez/widgets/widgets.dart';

class ContactCardMobile extends StatefulWidget {
  const ContactCardMobile({
    super.key,
  });

  @override
  State<ContactCardMobile> createState() => _ContactCardMobileState();
}

class _ContactCardMobileState extends State<ContactCardMobile> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeanCodezBloc, SeanCodezState>(
        builder: (context, appState) {
      return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Contact Me',
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            color: Theme.of(context).primaryColorLight,
                          ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Divider(
                    color: Theme.of(context).primaryColorLight,
                    thickness: 1,
                    height: 16,
                    indent: MediaQuery.of(context).size.width * 0.05,
                    endIndent: MediaQuery.of(context).size.width * 0.05,
                  ),
                  SizedBox(
                    width: 560,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Feel free to reach out to me on any of the '
                        'platforms linked below or send me a message '
                        'directly through the form below. I am currently '
                        'taking on new projects, am always open to new '
                        'opportunities or collaborations, '
                        'and would love to hear from you!',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Theme.of(context).primaryColorLight,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const ContactForm(),
                  const SizedBox(
                    height: 64,
                  ),
                  Divider(
                    color: Theme.of(context).primaryColorLight,
                    thickness: 1,
                    height: 16,
                    indent: MediaQuery.of(context).size.width * 0.05,
                    endIndent: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GithubIconBtn(
                          theme: appState.darkTheme,
                        )
                            .animate(
                              delay: 3800.ms,
                            )
                            .slide(
                              begin: const Offset(-8, 0),
                              duration: 1000.ms,
                              curve: Curves.fastEaseInToSlowEaseOut,
                            ),
                        LinkedIconBtn(
                          theme: appState.darkTheme,
                        )
                            .animate(
                              delay: 3600.ms,
                            )
                            .slide(
                              begin: const Offset(0, 8),
                              duration: 1000.ms,
                              curve: Curves.fastEaseInToSlowEaseOut,
                            ),
                        InstagramIconBtn(
                          theme: appState.darkTheme,
                        )
                            .animate(
                              delay: 3800.ms,
                            )
                            .slide(
                              begin: const Offset(8, 0),
                              duration: 1000.ms,
                              curve: Curves.fastEaseInToSlowEaseOut,
                            ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
          .animate(
            delay: 2000.ms,
          )
          .fadeIn(
            duration: 4000.ms,
            curve: Curves.easeIn,
          );
    });
  }
}
