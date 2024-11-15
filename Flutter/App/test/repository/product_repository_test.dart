import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:products_crud/domain/product/model/product.dart';
import 'package:products_crud/domain/product/model/product_details.dart';
import 'package:products_crud/domain/product/repository/product_repository.dart';

import 'product_repository_test.mocks.dart';

@GenerateMocks([ProductRepository])
void main() {
  late MockProductRepository mockProductRepository;

  const mockProductDetails = ProductDetails(
    id: 1,
    title: 'Product 1',
    description: 'Detailed description of Product 1',
    price: 100,
    category: 'Category 1',
    images: ['image1.png'],
  );

  final mockProductList = [
    const Product(
      id: 1,
      title: 'Product 1',
      description: 'Description 1',
      price: 10,
      category: 'Category 1',
      images: ['image1.png'],
    ),
    const Product(
      id: 2,
      title: 'Product 2',
      description: 'Description 2',
      price: 20,
      category: 'Category 2',
      images: ['image2.png'],
    ),
  ];

  setUp(() {
    mockProductRepository = MockProductRepository();
  });

  group('ProductRepository Tests', () {
    test('should return ProductDetails when getProductDetails is called', () async {
      const productId = 1;
      when(mockProductRepository.getProductDetails(id: productId)).thenAnswer((_) async => mockProductDetails);

      final result = await mockProductRepository.getProductDetails(id: productId);

      expect(result, mockProductDetails);
      verify(mockProductRepository.getProductDetails(id: productId)).called(1);
      verifyNoMoreInteractions(mockProductRepository);
    });

    test('should return a list of Products when getProducts is called', () async {
      when(mockProductRepository.getProducts()).thenAnswer((_) async => mockProductList);

      final result = await mockProductRepository.getProducts();

      expect(result, mockProductList);
      verify(mockProductRepository.getProducts()).called(1);
      verifyNoMoreInteractions(mockProductRepository);
    });

    test('should throw an exception when getProductDetails fails', () async {
      const productId = 1;
      when(mockProductRepository.getProductDetails(id: productId))
          .thenThrow(Exception('Failed to fetch product details'));

      expect(
        () async => mockProductRepository.getProductDetails(id: productId),
        throwsA(isA<Exception>()),
      );
      verify(mockProductRepository.getProductDetails(id: productId)).called(1);
      verifyNoMoreInteractions(mockProductRepository);
    });

    test('should throw an exception when getProducts fails', () async {
      when(mockProductRepository.getProducts()).thenThrow(Exception('Failed to fetch products'));

      expect(
        () async => mockProductRepository.getProducts(),
        throwsA(isA<Exception>()),
      );
      verify(mockProductRepository.getProducts()).called(1);
      verifyNoMoreInteractions(mockProductRepository);
    });
  });
}
