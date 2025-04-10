import 'package:random_color_project/features/color_changer/domain/entities/color_entity.dart';

/// Abstract repository interface for color operations.
abstract class ColorRepository {
  ColorEntity generateRandomColor();
}
