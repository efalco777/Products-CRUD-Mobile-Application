part of 'product_details_page.dart';

class _Loaded extends StatelessWidget {
  const _Loaded({required this.productDetails});

  final PresentationProductDetails productDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Inset.small),
      child: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: CachedImage(
                url: productDetails.images.firstOrNull,
              ),
            ),
            Spacing.normal,
            Text(productDetails.title, style: context.textTheme.titleLarge),
            Divider(),
            Text(productDetails.description, style: context.textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
