import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_color_project/features/color_changer/data/repositories/color_repository.dart';

import 'package:random_color_project/features/color_changer/presentation/bloc/color_event.dart';
import 'package:random_color_project/features/color_changer/presentation/bloc/color_state.dart';

/// BLoC for managing color states.
class ColorBloc extends Bloc<ColorEvent, ColorState> {
  final ColorRepository _colorRepository;

  ColorBloc({required ColorRepository colorRepository})
      : _colorRepository = colorRepository,
        super(
          const ColorInitial(),
        ) {
    on<InitializeColorEvent>(_onInitializeColor);
    on<ChangeColorEvent>(_onChangeColor);
  }

  void _onInitializeColor(
    InitializeColorEvent event,
    Emitter<ColorState> emit,
  ) {
    final colorEntity = _colorRepository.generateRandomColor();
    emit(
      ColorLoaded(
        colorEntity: colorEntity,
        changeCount: 0,
      ),
    );
  }

  void _onChangeColor(
    ChangeColorEvent event,
    Emitter<ColorState> emit,
  ) {
    final currentState = state;

    if (currentState is ColorLoaded) {
      final colorEntity = _colorRepository.generateRandomColor();
      emit(
        ColorLoaded(
          colorEntity: colorEntity,
          changeCount: currentState.changeCount + 1,
        ),
      );
    } else {
      final colorEntity = _colorRepository.generateRandomColor();
      emit(
        ColorLoaded(
          colorEntity: colorEntity,
          changeCount: 1,
        ),
      );
    }
  }
}
