import 'package:color_riverpod_sample/controller/colorchange_state.dart';
import 'package:color_riverpod_sample/controller/colorscreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class ColorScreen extends ConsumerWidget {
  const ColorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Color> myColors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.black,
      Colors.purple,
    ];
    final colorScreenState =
        ref.watch(colorscreenStateNotifierProvider) as ColorScreenState;
    return Scaffold(
      backgroundColor: colorScreenState.scaffoldColor,
      body: ListView.separated(
          itemBuilder: (context, index) => InkWell(
                onTap: () {
                  ref
                      .read(colorscreenStateNotifierProvider.notifier)
                      .onColorSelection(myColors[index]);
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  color: myColors[index],
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(height: 15),
          itemCount: myColors.length),
    );
  }
}