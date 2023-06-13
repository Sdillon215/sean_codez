import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sean_codez/blocs/blocs.dart';
import 'package:sean_codez/widgets/widgets.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _name;
  String? _email;
  String? _message;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeanCodezBloc, SeanCodezState>(
        builder: (context, appState) {
      return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                minLines: 1,
                maxLines: 1,
                style: TextStyle(
                  color: Theme.of(context).primaryColorLight,
                ),
                decoration: InputDecoration(
                  hintText: 'Name',
                  filled: true,
                  fillColor: appState.darkTheme
                      ? Theme.of(context).primaryColorDark.withOpacity(0.7)
                      : Theme.of(context)
                          .colorScheme
                          .primaryContainer
                          .withOpacity(0.3),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                  disabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) => setState(() {
                  _name = value;
                }),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                minLines: 1,
                maxLines: 1,
                style: TextStyle(
                  color: Theme.of(context).primaryColorLight,
                ),
                decoration: InputDecoration(
                  hintText: 'Email',
                  filled: true,
                  fillColor: appState.darkTheme
                      ? Theme.of(context).primaryColorDark.withOpacity(0.7)
                      : Theme.of(context)
                          .colorScheme
                          .primaryContainer
                          .withOpacity(0.3),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                  disabledBorder: InputBorder.none,
                ),
                onChanged: (value) => setState(() {
                  _email = value;
                }),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                minLines: 3,
                maxLines: 6,
                style: TextStyle(
                  color: Theme.of(context).primaryColorLight,
                ),
                decoration: InputDecoration(
                  hintText: 'Questions, Comments, Project Inquiries',
                  filled: true,
                  fillColor: appState.darkTheme
                      ? Theme.of(context).primaryColorDark.withOpacity(0.7)
                      : Theme.of(context)
                          .colorScheme
                          .primaryContainer
                          .withOpacity(0.3),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                  disabledBorder: InputBorder.none,
                ),
                onChanged: (value) => setState(() {
                  _message = value;
                }),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your message';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: AnimatedButton(
                btnText: 'Send',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    BlocProvider.of<ContactEmailBloc>(context).add(
                      SendContactEmail(
                        name: _name!,
                        email: _email!,
                        message: _message!,
                      ),
                    );
                    setState(() {
                      _formKey.currentState!.reset();
                    });
                  }
                },
              ),
            ),
          ],
        ),
      );
    });
  }
}
