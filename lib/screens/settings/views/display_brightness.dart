import 'package:e_commerce/components/theme_option_card.dart';
import 'package:e_commerce/constants/constants.dart';
import 'package:flutter/material.dart';


class DisplayBrightness extends StatelessWidget {
  const DisplayBrightness({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (context, currentMode, child) {
        return Scaffold(
          appBar: AppBar(title: const Text('Display & Brightness')),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ThemeOptionCard(
                  mode: ThemeMode.light,
                  currentMode: currentMode,
                  title: 'Light mode',
                  onTap: () {
                    themeNotifier.value = ThemeMode.light;
                  },
                ),
                const SizedBox(width: 32),
                ThemeOptionCard(
                  mode: ThemeMode.dark,
                  currentMode: currentMode,
                  title: 'Dark mode',
                  onTap: () {
                    themeNotifier.value = ThemeMode.dark;
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
