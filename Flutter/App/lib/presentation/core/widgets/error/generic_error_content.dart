import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:products_crud/presentation/core/const/inset.dart';
import 'package:products_crud/presentation/core/locale/locale_keys.g.dart';
import 'package:products_crud/presentation/core/theme/theme_extension.dart';
import 'package:products_crud/presentation/core/widgets/common/spacing.dart';

class GenericErrorContent extends StatelessWidget {
  const GenericErrorContent({
    required this.onRefresh,
    super.key,
  });

  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Inset.normal),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.warning,
            size: 48,
            color: Theme.of(context).colorScheme.error,
          ),
          Spacing.tiny,
          Text(
            LocaleKeys.errors_unexpected.tr(),
            style: context.textTheme.titleLarge!.copyWith(color: context.colorScheme.error),
          ),
          Spacing.normal,
          SizedBox(
            child: ElevatedButton(
              onPressed: onRefresh,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(LocaleKeys.common_refresh.tr()),
                  Spacing.tiny,
                  const Icon(
                    Ionicons.refresh_circle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
