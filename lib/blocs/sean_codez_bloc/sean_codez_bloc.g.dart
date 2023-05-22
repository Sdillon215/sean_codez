// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sean_codez_bloc.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SeanCodezState extends SeanCodezState {
  @override
  final bool darkTheme;

  factory _$SeanCodezState([void Function(SeanCodezStateBuilder)? updates]) =>
      (new SeanCodezStateBuilder()..update(updates))._build();

  _$SeanCodezState._({required this.darkTheme}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        darkTheme, r'SeanCodezState', 'darkTheme');
  }

  @override
  SeanCodezState rebuild(void Function(SeanCodezStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeanCodezStateBuilder toBuilder() =>
      new SeanCodezStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeanCodezState && darkTheme == other.darkTheme;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, darkTheme.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SeanCodezState')
          ..add('darkTheme', darkTheme))
        .toString();
  }
}

class SeanCodezStateBuilder
    implements Builder<SeanCodezState, SeanCodezStateBuilder> {
  _$SeanCodezState? _$v;

  bool? _darkTheme;
  bool? get darkTheme => _$this._darkTheme;
  set darkTheme(bool? darkTheme) => _$this._darkTheme = darkTheme;

  SeanCodezStateBuilder();

  SeanCodezStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _darkTheme = $v.darkTheme;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeanCodezState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SeanCodezState;
  }

  @override
  void update(void Function(SeanCodezStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SeanCodezState build() => _build();

  _$SeanCodezState _build() {
    final _$result = _$v ??
        new _$SeanCodezState._(
            darkTheme: BuiltValueNullFieldError.checkNotNull(
                darkTheme, r'SeanCodezState', 'darkTheme'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
