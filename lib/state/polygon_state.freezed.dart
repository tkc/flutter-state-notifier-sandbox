// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'polygon_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PolygonStateTearOff {
  const _$PolygonStateTearOff();

  _PolygonState call(
      {double sides = 3.0, double size = 100.0, double rotation = 0.0}) {
    return _PolygonState(
      sides: sides,
      size: size,
      rotation: rotation,
    );
  }
}

// ignore: unused_element
const $PolygonState = _$PolygonStateTearOff();

mixin _$PolygonState {
  double get sides;
  double get size;
  double get rotation;

  $PolygonStateCopyWith<PolygonState> get copyWith;
}

abstract class $PolygonStateCopyWith<$Res> {
  factory $PolygonStateCopyWith(
          PolygonState value, $Res Function(PolygonState) then) =
      _$PolygonStateCopyWithImpl<$Res>;
  $Res call({double sides, double size, double rotation});
}

class _$PolygonStateCopyWithImpl<$Res> implements $PolygonStateCopyWith<$Res> {
  _$PolygonStateCopyWithImpl(this._value, this._then);

  final PolygonState _value;
  // ignore: unused_field
  final $Res Function(PolygonState) _then;

  @override
  $Res call({
    Object sides = freezed,
    Object size = freezed,
    Object rotation = freezed,
  }) {
    return _then(_value.copyWith(
      sides: sides == freezed ? _value.sides : sides as double,
      size: size == freezed ? _value.size : size as double,
      rotation: rotation == freezed ? _value.rotation : rotation as double,
    ));
  }
}

abstract class _$PolygonStateCopyWith<$Res>
    implements $PolygonStateCopyWith<$Res> {
  factory _$PolygonStateCopyWith(
          _PolygonState value, $Res Function(_PolygonState) then) =
      __$PolygonStateCopyWithImpl<$Res>;
  @override
  $Res call({double sides, double size, double rotation});
}

class __$PolygonStateCopyWithImpl<$Res> extends _$PolygonStateCopyWithImpl<$Res>
    implements _$PolygonStateCopyWith<$Res> {
  __$PolygonStateCopyWithImpl(
      _PolygonState _value, $Res Function(_PolygonState) _then)
      : super(_value, (v) => _then(v as _PolygonState));

  @override
  _PolygonState get _value => super._value as _PolygonState;

  @override
  $Res call({
    Object sides = freezed,
    Object size = freezed,
    Object rotation = freezed,
  }) {
    return _then(_PolygonState(
      sides: sides == freezed ? _value.sides : sides as double,
      size: size == freezed ? _value.size : size as double,
      rotation: rotation == freezed ? _value.rotation : rotation as double,
    ));
  }
}

class _$_PolygonState with DiagnosticableTreeMixin implements _PolygonState {
  const _$_PolygonState(
      {this.sides = 3.0, this.size = 100.0, this.rotation = 0.0})
      : assert(sides != null),
        assert(size != null),
        assert(rotation != null);

  @JsonKey(defaultValue: 3.0)
  @override
  final double sides;
  @JsonKey(defaultValue: 100.0)
  @override
  final double size;
  @JsonKey(defaultValue: 0.0)
  @override
  final double rotation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PolygonState(sides: $sides, size: $size, rotation: $rotation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PolygonState'))
      ..add(DiagnosticsProperty('sides', sides))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('rotation', rotation));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PolygonState &&
            (identical(other.sides, sides) ||
                const DeepCollectionEquality().equals(other.sides, sides)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)) &&
            (identical(other.rotation, rotation) ||
                const DeepCollectionEquality()
                    .equals(other.rotation, rotation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sides) ^
      const DeepCollectionEquality().hash(size) ^
      const DeepCollectionEquality().hash(rotation);

  @override
  _$PolygonStateCopyWith<_PolygonState> get copyWith =>
      __$PolygonStateCopyWithImpl<_PolygonState>(this, _$identity);
}

abstract class _PolygonState implements PolygonState {
  const factory _PolygonState({double sides, double size, double rotation}) =
      _$_PolygonState;

  @override
  double get sides;
  @override
  double get size;
  @override
  double get rotation;
  @override
  _$PolygonStateCopyWith<_PolygonState> get copyWith;
}
