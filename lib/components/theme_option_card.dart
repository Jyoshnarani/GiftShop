import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ThemeOptionCard extends StatelessWidget {
  final ThemeMode mode;
  final ThemeMode currentMode;
  final String title;
  final VoidCallback onTap;

  const ThemeOptionCard({
    super.key,
    required this.mode,
    required this.currentMode,
    required this.title,
    required this.onTap,
  });

  bool get isSelected => mode == currentMode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 200,
            width: 120,
            decoration: BoxDecoration(
              color: mode == ThemeMode.light ? whiteColor : blackColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: isSelected ? purpleColor : transparent,
                width: 3,
              ),
              boxShadow: isSelected
                  ? [BoxShadow(color: purpleColor.withValues(alpha : 0.5), blurRadius: 10)]
                  : [BoxShadow(color: Colors.black.withValues(alpha : 0.3), blurRadius: 5)],
            ),
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                  decoration: BoxDecoration(
                    color: mode == ThemeMode.light ? blackColor10 : whiteColor10,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildCircleIcon(mode, isSelected),
                      _buildCircleIcon(mode, isSelected),
                      _buildCircleIcon(mode, isSelected),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                // List item placeholders (lines)
                _buildListItem(mode),
                const SizedBox(height: 10),
                _buildListItem(mode),
                const SizedBox(height: 10),
                _buildListItem(mode),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Text Label
          Text(
            title,
            style: const TextStyle(color: whiteColor, fontSize: 16),
          ),
          const SizedBox(height: 10),
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? purpleColor : greyColor,
                width: 2,
              ),
              color: isSelected ? purpleColor : transparent,
            ),
            child: isSelected
                ? const Center(
              child: Icon(
                Icons.circle,
                color: whiteColor,
                size: 8,
              ),
            )
                : null,
          ),
        ],
      ),
    );
  }

  Widget _buildCircleIcon(ThemeMode mode, bool isSelected) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected
            ? purpleColor
            : (mode == ThemeMode.light ? blackColor60 : whiteColor60),
      ),
    );
  }

  Widget _buildListItem(ThemeMode mode) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: mode == ThemeMode.light ? blackColor60 : whiteColor60,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Container(
            height: 6,
            color: mode == ThemeMode.light ? blackColor20 : whiteColor40,
          ),
        ),
      ],
    );
  }
}
