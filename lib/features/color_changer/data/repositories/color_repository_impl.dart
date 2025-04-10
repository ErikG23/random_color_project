import 'package:random_color_project/core/utils/color_generator.dart';
import 'package:random_color_project/features/color_changer/data/repositories/color_repository.dart';
import 'package:random_color_project/features/color_changer/domain/entities/color_entity.dart';

/// Implementation of ColorRepository.
class ColorRepositoryImpl implements ColorRepository {
  final ColorGenerator _colorGenerator;

  ColorRepositoryImpl({
    required ColorGenerator colorGenerator,
  }) : _colorGenerator = colorGenerator;

  @override
  ColorEntity generateRandomColor() {
    final randomColor = _colorGenerator.generateRandomColor();

    return ColorEntity(value: randomColor);
  }
}
