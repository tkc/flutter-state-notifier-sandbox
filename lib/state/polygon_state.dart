import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'polygon_state.freezed.dart';

@freezed
abstract class PolygonState with _$PolygonState {
  const factory PolygonState({
    @Default(3.0) double sides,
    @Default(100.0) double size,
    @Default(0.0) double rotation,
  }) = _PolygonState;
}
