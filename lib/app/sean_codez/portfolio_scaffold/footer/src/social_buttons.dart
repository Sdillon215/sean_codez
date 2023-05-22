import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vrouter/vrouter.dart';

class SocialButtons extends StatefulWidget {
  const SocialButtons({super.key});

  @override
  _SocialButtonsState createState() => _SocialButtonsState();
}

class _SocialButtonsState extends State<SocialButtons> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              iconSize: 24,
              splashRadius: 28,
              onPressed: () =>
                  VRouter.of(context).to('https://floral-vibez.web.app/'),
              icon: const FaIcon(
                FontAwesomeIcons.instagram,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              iconSize: 24,
              splashRadius: 28,
              onPressed: () =>
                  VRouter.of(context).to('https://floral-vibez.web.app/'),
              icon: const FaIcon(
                FontAwesomeIcons.pinterest,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              iconSize: 24,
              splashRadius: 28,
              onPressed: () =>
                  VRouter.of(context).to('https://floral-vibez.web.app/'),
              icon: const FaIcon(
                FontAwesomeIcons.tiktok,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              iconSize: 24,
              splashRadius: 28,
              onPressed: () =>
                  VRouter.of(context).to('https://floral-vibez.web.app/'),
              icon: const FaIcon(
                FontAwesomeIcons.facebookF,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              iconSize: 24,
              splashRadius: 28,
              onPressed: () =>
                  VRouter.of(context).to('https://floral-vibez.web.app/'),
              icon: const FaIcon(
                FontAwesomeIcons.youtube,
                color: Colors.white,
              ),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: IconButton(
          //     iconSize: 24,
          //     splashRadius: 28,
          //     onPressed: () => launch('https://twitter.com/daveandmattvan/'),
          //     icon: const FaIcon(
          //       FontAwesomeIcons.twitter,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              iconSize: 24,
              splashRadius: 28,
              onPressed: () =>
                  VRouter.of(context).to('https://floral-vibez.web.app/'),
              icon: const FaIcon(
                FontAwesomeIcons.linkedin,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
