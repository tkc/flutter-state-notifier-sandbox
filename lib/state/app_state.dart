import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:flutter_state_notifier_sandbox/state/polygon_state.dart';
part 'app_state.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState({
    @Default(0) int count,
    // @Default(const []) List<PolygonState> PolygonStates,
    @Default(const PolygonState()) PolygonState polygonState,
  }) = _AppState;
}

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier() : super(const _AppState());

  // increment
  increment() => state = state.copyWith(count: state.count + 1);

  // setSides
  Future<void> setSides(double val) async {
    await new Future.delayed(new Duration(microseconds: 1200));
    state = state.copyWith(
        polygonState: state.polygonState.copyWith(
      sides: val,
    ));
  }

  // setSize
  Future<void> setSize(double val) async {
    state = state.copyWith(
        polygonState: state.polygonState.copyWith(
      size: val,
    ));
  }

  // setRotation
  Future<void> setRotation(double val) async {
    state = state.copyWith(
        polygonState: state.polygonState.copyWith(
      rotation: val,
    ));
  }

  // clearPolygonState
  Future<void> clearPolygonState() async {
    state = state.copyWith(
        polygonState: state.polygonState
            .copyWith(sides: 3.0, size: 100.0, rotation: 0.0));
  }
}
