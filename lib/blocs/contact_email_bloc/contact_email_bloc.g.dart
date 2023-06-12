// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_email_bloc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContactEmailState extends ContactEmailState {
  @override
  final bool messageSent;

  factory _$ContactEmailState(
          [void Function(ContactEmailStateBuilder)? updates]) =>
      (new ContactEmailStateBuilder()..update(updates))._build();

  _$ContactEmailState._({required this.messageSent}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        messageSent, r'ContactEmailState', 'messageSent');
  }

  @override
  ContactEmailState rebuild(void Function(ContactEmailStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContactEmailStateBuilder toBuilder() =>
      new ContactEmailStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactEmailState && messageSent == other.messageSent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, messageSent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContactEmailState')
          ..add('messageSent', messageSent))
        .toString();
  }
}

class ContactEmailStateBuilder
    implements Builder<ContactEmailState, ContactEmailStateBuilder> {
  _$ContactEmailState? _$v;

  bool? _messageSent;
  bool? get messageSent => _$this._messageSent;
  set messageSent(bool? messageSent) => _$this._messageSent = messageSent;

  ContactEmailStateBuilder();

  ContactEmailStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _messageSent = $v.messageSent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactEmailState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContactEmailState;
  }

  @override
  void update(void Function(ContactEmailStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContactEmailState build() => _build();

  _$ContactEmailState _build() {
    final _$result = _$v ??
        new _$ContactEmailState._(
            messageSent: BuiltValueNullFieldError.checkNotNull(
                messageSent, r'ContactEmailState', 'messageSent'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
