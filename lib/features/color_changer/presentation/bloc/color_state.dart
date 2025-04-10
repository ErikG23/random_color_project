import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:random_color_project/features/color_changer/domain/entities/color_entity.dart';

/// Represents the state of the color changer feature
@immutable
abstract class ColorState {
  const ColorState();
}

/// Initial state of the color changer
class ColorInitial extends ColorState {
  const ColorInitial();
}

// State when a color is loaded.
class ColorLoaded extends ColorState {
  final ColorEntity colorEntity;
  final int changeCount;

  const ColorLoaded({
    required this.colorEntity,
    required this.changeCount,
  });
}
