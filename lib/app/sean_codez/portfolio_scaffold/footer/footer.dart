import 'package:sean_codez/app/sean_codez/portfolio_scaffold/footer/src/social_buttons.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate.fixed([
        Container(
          color: Theme.of(context).colorScheme.tertiary,
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height * 0.4,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.local_florist_rounded,
                    color: Theme.of(context).primaryColorLight,
                  ),
                ),
                // const Padding(
                //   padding: EdgeInsets.all(8.0),
                //   child: FooterNavigationButtons(),
                // ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SocialButtons(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '${DateTime.now().year} FloralVibes LLC. All Rights Reserved.',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
