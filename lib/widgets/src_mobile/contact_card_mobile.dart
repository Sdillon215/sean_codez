import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 60),
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
            child: Text(
              'Contact',
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: Theme.of(context).primaryColorLight,
                  ),
              textAlign: TextAlign.left,
            ),
          ).animate(delay: 2000.ms).fadeIn(
                duration: 4000.ms,
                curve: Curves.easeIn,
              ),
        ),
      ),
    );
  }
}