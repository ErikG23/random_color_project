import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:random_color_project/features/color_changer/presentation/bloc/color_bloc.dart';
import 'package:random_color_project/features/color_changer/presentation/bloc/color_event.dart';
import 'package:random_color_project/features/color_changer/presentation/bloc/color_state.dart';
import 'package:random_color_project/features/color_changer/presentation/widgets/centered_text.dart';
import 'package:random_color_project/features/color_changer/presentation/widgets/click_counter.dart';

// The main page of the color changer app
class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, ColorState>(
      builder: (context, state) {
        final backgroundColor =
            state is ColorLoaded ? state.colorEntity.value : Colors.white;

        return GestureDetector(
          onTap: () {
            context.read<ColorBloc>().add(const ChangeColorEvent());
          },
          child: Scaffold(
            backgroundColor: backgroundColor,
            body: Stack(
              children: [
                const CenteredText(text: 'Hello there'),
                if (state is ColorLoaded)
                  ClickCounter(count: state.changeCount),
              ],
            ),
          ),
        );
      },
    );
  }
}
