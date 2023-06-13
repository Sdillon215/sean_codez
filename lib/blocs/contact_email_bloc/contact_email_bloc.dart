import 'package:built_value/built_value.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:emailjs/emailjs.dart';

part 'contact_email_bloc.g.dart';

abstract class ContactEmailState
    implements Built<ContactEmailState, ContactEmailStateBuilder> {
  ContactEmailState._();

  bool get messageSent;

  factory ContactEmailState([Function(ContactEmailStateBuilder b) updates]) =
      _$ContactEmailState;
}

class ContactEmailBloc extends Bloc<ContactEmailEvent, ContactEmailState> {
  ContactEmailBloc()
      : super(
          ContactEmailState(
            (b) => b..messageSent = false,
          ),
        ) {
    _registerEventHandlers();
  }

  void _registerEventHandlers() {
    on<SendContactEmail>((event, emit) async {
      Map<String, dynamic> templateParams = {
        'from_name': event.name,
        'from_email': event.email,
        'message': event.message,
      };

      try {
        await EmailJS.send(
          dotenv.env['SERVICE_ID']!,
          dotenv.env['TEMPLATE_ID']!,
          templateParams,
          Options(
            publicKey: dotenv.env['PUB_KEY']!,
            privateKey: dotenv.env['PRIVATE_KEY']!,
          ),
        );
        print('SUCCESS!');
      } catch (error) {
        print(error.toString());
      }
      emit(
        state.rebuild(
          (b) => b..messageSent = true,
        ),
      );
    });
  }
}

abstract class ContactEmailEvent {
  const ContactEmailEvent();
}

class SendContactEmail extends ContactEmailEvent {
  SendContactEmail({
    required this.name,
    required this.email,
    required this.message,
  });

  final String name;
  final String email;
  final String message;
}
