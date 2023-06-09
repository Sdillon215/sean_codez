import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sean_codez/app/app.dart';
import 'package:sean_codez/blocs/blocs.dart';
import 'package:sean_codez/widgets/widgets.dart';

class Contact extends StatefulWidget {
  const Contact({
    super.key,
  });

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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
                    alignment: Alignment.topRight,
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
                      'assets/images/castle_valley_invert.jpg',
                      fit: BoxFit.cover,
                      alignment: Alignment.topRight,
                    ),
                  ),
                  secondChild: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Image.asset(
                      'assets/images/castle_valley.jpg',
                      fit: BoxFit.cover,
                      alignment: Alignment.topRight,
                    ),
                  ),
                ).animate().fadeIn(
                      delay: 500.ms,
                      duration: 3000.ms,
                      curve: Curves.easeIn,
                    ),
                Center(
                  child: MediaQuery.of(context).size.width < tabletBreakpoint
                      ? const ContactCardMobile()
                      : const ContactCardDesktop(),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
