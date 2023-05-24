import 'package:flutter/material.dart';

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
    return Card(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: AspectRatio(
          aspectRatio: 4 / 5,
          child: Image.asset(
            'assets/images/gambler.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
