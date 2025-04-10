import 'dart:math';
import 'dart:ui';

/// Utiluty class responsible for generating random colors.
class ColorGenerator {
  final Random _random;

  ColorGenerator({Random? random}) : _random = random ?? Random();

  Color generateRandomColor() {
    const number = 256;

    return Color.fromRGBO(
      _random.nextInt(number),
      _random.nextInt(number),
      _random.nextInt(number),
      1.0,
    );
  }
}
