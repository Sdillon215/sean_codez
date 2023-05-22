import 'package:built_value/built_value.dart';
import 'package:bloc/bloc.dart';
// import 'package:g_recaptcha_v3/g_recaptcha_v3.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';

part 'sean_codez_bloc.g.dart';

// A bloc for methods and state relevant to any DMVans client
abstract class SeanCodezState
    implements Built<SeanCodezState, SeanCodezStateBuilder> {
  SeanCodezState._();

  bool get darkTheme;

  factory SeanCodezState([Function(SeanCodezStateBuilder b) updates]) =
      _$SeanCodezState;
}

class SeanCodezBloc extends Bloc<SeanCodezEvent, SeanCodezState> {
  SeanCodezBloc(
      )
      : super(
          SeanCodezState(
            (b) => b..darkTheme = true,
          ),
        ) {
    _registerEventHandlers();
  }

  void _registerEventHandlers() {
    on<ToggleTheme>((event, emit) {
      emit(
        state.rebuild(
          (b) => b..darkTheme = event.darkTheme,
        ),
      );
    });
  }
}

abstract class SeanCodezEvent {
  const SeanCodezEvent();
}

class ToggleTheme extends SeanCodezEvent {
  const ToggleTheme({required this.darkTheme});
  final bool darkTheme;
}
