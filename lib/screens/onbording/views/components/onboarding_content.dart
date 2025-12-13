import 'package:flutter/material.dart';

import '../../../../constants/constants.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    super.key,
    this.isTextOnTop = false,
    required this.title,
    required this.description,
    required this.image,
  });

  final bool isTextOnTop;
  final String title, description, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),

        if (isTextOnTop)
          OnboardTitleDescription(
            title: title,
            description: description,
          ),
        if (isTextOnTop) const Spacer(),
        Image.asset(
          image,
          height: 250,
        ),
        if (!isTextOnTop) const Spacer(), if (!isTextOnTop)
          OnboardTitleDescription(
          title: title,
          description: description,
        ),
        const Spacer(),
      ],
    );
  }
}

class OnboardTitleDescription extends StatelessWidget {
  const OnboardTitleDescription({
    super.key,
    required this.title,
    required this.description,
  });

  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: defaultPadding),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
