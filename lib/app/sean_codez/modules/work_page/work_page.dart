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
      return SliverList(
        delegate: SliverChildListDelegate(
          [
            Container(
              color: appState.darkTheme
                  ? Theme.of(context).colorScheme.onBackground
                  : Theme.of(context).colorScheme.onSurfaceVariant,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Center(
                    child: Card(
                      child: ProjectCardDesktop(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: appState.darkTheme
                  ? Theme.of(context).colorScheme.onBackground
                  : Theme.of(context).colorScheme.onSurfaceVariant,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Center(
                    child: Card(
                      child: ProjectCardDesktop(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: appState.darkTheme
                  ? Theme.of(context).colorScheme.onBackground
                  : Theme.of(context).colorScheme.onSurfaceVariant,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Center(
                    child: Card(
                      child: ProjectCardDesktop(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: appState.darkTheme
                  ? Theme.of(context).colorScheme.onBackground
                  : Theme.of(context).colorScheme.onSurfaceVariant,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Center(
                    child: Card(
                      child: ProjectCardDesktop(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
