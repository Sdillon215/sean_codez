import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sean_codez/app/app.dart';
import 'package:vrouter/vrouter.dart';

class DartIcon extends StatelessWidget {
  const DartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/dev_icons/dart_icon.png',
      width: 72,
    );
  }
}

class JsIcon extends StatelessWidget {
  const JsIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/dev_icons/js_icon.png',
      width: 30,
    );
  }
}

class GcpIcon extends StatelessWidget {
  const GcpIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/dev_icons/google_cloud_platform_icon.png',
      width: 144,
    );
  }
}

class Ga4Icon extends StatelessWidget {
  const Ga4Icon({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/dev_icons/GA4_Logo.png',
      width: 130,
    );
  }
}

class FirebaseIcon extends StatelessWidget {
  const FirebaseIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/dev_icons/firebase_icon.png',
      width: 100,
    );
  }
}

class ShopifyIcon extends StatelessWidget {
  const ShopifyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/dev_icons/shopify_icon.png',
      width: 90,
    );
  }
}

class HasuraIcon extends StatelessWidget {
  const HasuraIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/dev_icons/hasura_icon_light.png',
      width: 80,
    );
  }
}

class LinkedIconBtn extends StatelessWidget {
  const LinkedIconBtn({super.key, required this.theme});
  final bool theme;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => VRouter.of(context)
          .toExternal('https://www.linkedin.com/in/seandillon215/'),
      icon: FaIcon(
        FontAwesomeIcons.linkedin,
        color: theme
            ? MediaQuery.of(context).size.width < mobileBreakpoint
                ? Theme.of(context).colorScheme.onBackground
                : Theme.of(context).primaryColorDark.withOpacity(0.8)
            : Theme.of(context).colorScheme.primaryContainer.withOpacity(0.6),
        size: 60,
      ),
    );
  }
}

class InstagramIconBtn extends StatelessWidget {
  const InstagramIconBtn({super.key, required this.theme});
  final bool theme;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => VRouter.of(context)
          .toExternal('https://www.instagram.com/taco_sendz'),
      icon: FaIcon(
        FontAwesomeIcons.instagram,
        color: theme
            ? MediaQuery.of(context).size.width < mobileBreakpoint
                ? Theme.of(context).colorScheme.onBackground
                : Theme.of(context).primaryColorDark.withOpacity(0.8)
            : Theme.of(context).colorScheme.primaryContainer.withOpacity(0.6),
        size: 60,
      ),
    );
  }
}

class GithubIconBtn extends StatelessWidget {
  const GithubIconBtn({super.key, required this.theme});
  final bool theme;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () =>
          VRouter.of(context).toExternal('https://github.com/Sdillon215'),
      icon: FaIcon(
        FontAwesomeIcons.github,
        color: theme
            ? MediaQuery.of(context).size.width < mobileBreakpoint
                ? Theme.of(context).colorScheme.onBackground
                : Theme.of(context).primaryColorDark.withOpacity(0.8)
            : Theme.of(context).colorScheme.primaryContainer.withOpacity(0.6),
        size: 60,
      ),
    );
  }
}
