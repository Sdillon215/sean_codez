import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

class AnimatedButton extends StatefulWidget {
  const AnimatedButton({
    Key? key,
    required this.btnText,
    this.vRouterPath,
  }) : super(key: key);
  final String btnText;
  final String? vRouterPath;
  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      duration: const Duration(milliseconds: 200),
      scale: _hover ? 1.1 : 1,
      child: TextButton(
        onPressed: () {
          VRouter.of(context).to(widget.vRouterPath!);
        },
        onHover: (value) => setState(() => _hover = value),
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.resolveWith(
            (states) => const Size(136, 24),
          ),
          overlayColor: MaterialStateProperty.resolveWith(
            (states) => Colors.transparent,
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => _hover
                ? Theme.of(context).primaryColorLight.withOpacity(0.8)
                : Theme.of(context).primaryColor.withOpacity(0.8),
          ),
          shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
              side: BorderSide(
                color: Theme.of(context).primaryColorLight,
                width: 1,
              ),
            ),
          ),
        ),
        child: Text(
          widget.btnText,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: _hover ?Theme.of(context).primaryColorDark : Theme.of(context).primaryColorLight,
              ),
        ),
      ),
    );
  }
}
