import 'package:color_riverpod_sample/controller/colorchange_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final colorscreenStateNotifierProvider =
    StateNotifierProvider((ref) => ColorScreenStateNotifier());

class ColorScreenStateNotifier extends StateNotifier<ColorScreenState> {
  ColorScreenStateNotifier()
      : super(ColorScreenState(scaffoldColor: Colors.black));

  onColorSelection(Color newColor) {
    state = state.copyWith(scaffoldColor: newColor);
  }
}
