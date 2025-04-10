import 'package:meta/meta.dart';

/// Represents events for the color changer feature.
@immutable
abstract class ColorEvent {
  const ColorEvent();
}

// Event triggered when the screen is tapped
class ChangeColorEvent extends ColorEvent {
  const ChangeColorEvent();
}

/// Event to initialize the color
class InitializeColorEvent extends ColorEvent {
  const InitializeColorEvent();
}
