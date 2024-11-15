part of 'products_page.dart';

class _Loaded extends StatelessWidget {
  const _Loaded({required this.products});

  final List<PresentationProduct> products;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: products.length,
      separatorBuilder: (_, __) => Spacing.tiny,
      itemBuilder: (context, index) {
        final product = products[index];
        return _ProductTile(
          product: product,
          onTap: _onTap,
        );
      },
    );
  }

  void _onTap(PresentationProduct product) {
    rootRouter.push(ProductDetailsRoute(id: product.id));
  }
}

class _ProductTile extends StatelessWidget {
  const _ProductTile({
    required this.product,
    required this.onTap,
  });

  final PresentationProduct product;
  final GenericCallback<PresentationProduct> onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AspectRatio(
        aspectRatio: 4 / 3,
        child: CachedImage(url: product.images.firstOrNull),
      ),
      title: Text(
        product.title,
        style: context.textTheme.labelMedium,
      ),
      subtitle: Text(
        product.description,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: context.textTheme.labelSmall,
      ),
      onTap: () => onTap(product),
      trailing: IconButton(
        onPressed: () => onTap(product),
        icon: const Icon(
          Ionicons.arrow_forward,
        ),
      ),
    );
  }
}
