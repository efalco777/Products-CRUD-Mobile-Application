import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

const double _borderRadius = 12;

class CachedImage extends StatelessWidget {
  const CachedImage({
    required this.url,
    super.key,
  });

  final String? url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(_borderRadius),
      child: ColoredBox(
        color: Theme.of(context).colorScheme.tertiaryContainer,
        child: switch (url != null) {
          true => CachedNetworkImage(
              imageUrl: url!,
              progressIndicatorBuilder: (context, url, progress) {
                return CircularProgressIndicator.adaptive(
                  value: progress.progress,
                );
              },
            ),
          false => const SizedBox.shrink(),
        },
      ),
    );
  }
}
