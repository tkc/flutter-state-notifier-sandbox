// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call(
      {int count = 0, PolygonState polygonState = const PolygonState()}) {
    return _AppState(
      count: count,
      polygonState: polygonState,
    );
  }
}

// ignore: unused_element
const $AppState = _$AppStateTearOff();

mixin _$AppState {
  int get count;
  PolygonState get polygonState;

  $AppStateCopyWith<AppState> get copyWith;
}

abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({int count, PolygonState polygonState});

  $PolygonStateCopyWith<$Res> get polygonState;
}

class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object count = freezed,
    Object polygonState = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
      polygonState: polygonState == freezed
          ? _value.polygonState
          : polygonState as PolygonState,
    ));
  }

  @override
  $PolygonStateCopyWith<$Res> get polygonState {
    if (_value.polygonState == null) {
      return null;
    }
    return $PolygonStateCopyWith<$Res>(_value.polygonState, (value) {
      return _then(_value.copyWith(polygonState: value));
    });
  }
}

abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, PolygonState polygonState});

  @override
  $PolygonStateCopyWith<$Res> get polygonState;
}

class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object count = freezed,
    Object polygonState = freezed,
  }) {
    return _then(_AppState(
      count: count == freezed ? _value.count : count as int,
      polygonState: polygonState == freezed
          ? _value.polygonState
          : polygonState as PolygonState,
    ));
  }
}

class _$_AppState with DiagnosticableTreeMixin implements _AppState {
  const _$_AppState({this.count = 0, this.polygonState = const PolygonState()})
      : assert(count != null),
        assert(polygonState != null);

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @JsonKey(defaultValue: const PolygonState())
  @override
  final PolygonState polygonState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState(count: $count, polygonState: $polygonState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('polygonState', polygonState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppState &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.polygonState, polygonState) ||
                const DeepCollectionEquality()
                    .equals(other.polygonState, polygonState)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(polygonState);

  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState({int count, PolygonState polygonState}) = _$_AppState;

  @override
  int get count;
  @override
  PolygonState get polygonState;
  @override
  _$AppStateCopyWith<_AppState> get copyWith;
}
