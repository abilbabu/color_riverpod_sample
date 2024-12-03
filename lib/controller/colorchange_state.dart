import 'package:flutter/material.dart';

class ColorScreenState {
  Color scaffoldColor;

  ColorScreenState({required this.scaffoldColor});

  ColorScreenState copyWith({Color? scaffoldColor}) {
    return ColorScreenState(
      scaffoldColor: scaffoldColor ?? this.scaffoldColor,
    );
  }
}