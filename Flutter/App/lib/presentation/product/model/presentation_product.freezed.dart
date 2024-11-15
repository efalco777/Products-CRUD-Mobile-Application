// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presentation_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PresentationProduct {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;

  /// Create a copy of PresentationProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PresentationProductCopyWith<PresentationProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresentationProductCopyWith<$Res> {
  factory $PresentationProductCopyWith(
          PresentationProduct value, $Res Function(PresentationProduct) then) =
      _$PresentationProductCopyWithImpl<$Res, PresentationProduct>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      double price,
      String category,
      List<String> images});
}

/// @nodoc
class _$PresentationProductCopyWithImpl<$Res, $Val extends PresentationProduct>
    implements $PresentationProductCopyWith<$Res> {
  _$PresentationProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PresentationProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? category = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PresentationProductImplCopyWith<$Res>
    implements $PresentationProductCopyWith<$Res> {
  factory _$$PresentationProductImplCopyWith(_$PresentationProductImpl value,
          $Res Function(_$PresentationProductImpl) then) =
      __$$PresentationProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      double price,
      String category,
      List<String> images});
}

/// @nodoc
class __$$PresentationProductImplCopyWithImpl<$Res>
    extends _$PresentationProductCopyWithImpl<$Res, _$PresentationProductImpl>
    implements _$$PresentationProductImplCopyWith<$Res> {
  __$$PresentationProductImplCopyWithImpl(_$PresentationProductImpl _value,
      $Res Function(_$PresentationProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresentationProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? category = null,
    Object? images = null,
  }) {
    return _then(_$PresentationProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$PresentationProductImpl implements _PresentationProduct {
  const _$PresentationProductImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.category,
      required final List<String> images})
      : _images = images;

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final double price;
  @override
  final String category;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'PresentationProduct(id: $id, title: $title, description: $description, price: $price, category: $category, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PresentationProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, price,
      category, const DeepCollectionEquality().hash(_images));

  /// Create a copy of PresentationProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PresentationProductImplCopyWith<_$PresentationProductImpl> get copyWith =>
      __$$PresentationProductImplCopyWithImpl<_$PresentationProductImpl>(
          this, _$identity);
}

abstract class _PresentationProduct implements PresentationProduct {
  const factory _PresentationProduct(
      {required final int id,
      required final String title,
      required final String description,
      required final double price,
      required final String category,
      required final List<String> images}) = _$PresentationProductImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  double get price;
  @override
  String get category;
  @override
  List<String> get images;

  /// Create a copy of PresentationProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PresentationProductImplCopyWith<_$PresentationProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
