// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsDetailsCubitState {
  DataState get dataState => throw _privateConstructorUsedError;
  PresentationProductDetails get productDetails =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProductsDetailsCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsDetailsCubitStateCopyWith<ProductsDetailsCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsDetailsCubitStateCopyWith<$Res> {
  factory $ProductsDetailsCubitStateCopyWith(ProductsDetailsCubitState value,
          $Res Function(ProductsDetailsCubitState) then) =
      _$ProductsDetailsCubitStateCopyWithImpl<$Res, ProductsDetailsCubitState>;
  @useResult
  $Res call({DataState dataState, PresentationProductDetails productDetails});

  $DataStateCopyWith<$Res> get dataState;
  $PresentationProductDetailsCopyWith<$Res> get productDetails;
}

/// @nodoc
class _$ProductsDetailsCubitStateCopyWithImpl<$Res,
        $Val extends ProductsDetailsCubitState>
    implements $ProductsDetailsCubitStateCopyWith<$Res> {
  _$ProductsDetailsCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsDetailsCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataState = null,
    Object? productDetails = null,
  }) {
    return _then(_value.copyWith(
      dataState: null == dataState
          ? _value.dataState
          : dataState // ignore: cast_nullable_to_non_nullable
              as DataState,
      productDetails: null == productDetails
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as PresentationProductDetails,
    ) as $Val);
  }

  /// Create a copy of ProductsDetailsCubitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataStateCopyWith<$Res> get dataState {
    return $DataStateCopyWith<$Res>(_value.dataState, (value) {
      return _then(_value.copyWith(dataState: value) as $Val);
    });
  }

  /// Create a copy of ProductsDetailsCubitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PresentationProductDetailsCopyWith<$Res> get productDetails {
    return $PresentationProductDetailsCopyWith<$Res>(_value.productDetails,
        (value) {
      return _then(_value.copyWith(productDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailsCubitStateImplCopyWith<$Res>
    implements $ProductsDetailsCubitStateCopyWith<$Res> {
  factory _$$ProductDetailsCubitStateImplCopyWith(
          _$ProductDetailsCubitStateImpl value,
          $Res Function(_$ProductDetailsCubitStateImpl) then) =
      __$$ProductDetailsCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataState dataState, PresentationProductDetails productDetails});

  @override
  $DataStateCopyWith<$Res> get dataState;
  @override
  $PresentationProductDetailsCopyWith<$Res> get productDetails;
}

/// @nodoc
class __$$ProductDetailsCubitStateImplCopyWithImpl<$Res>
    extends _$ProductsDetailsCubitStateCopyWithImpl<$Res,
        _$ProductDetailsCubitStateImpl>
    implements _$$ProductDetailsCubitStateImplCopyWith<$Res> {
  __$$ProductDetailsCubitStateImplCopyWithImpl(
      _$ProductDetailsCubitStateImpl _value,
      $Res Function(_$ProductDetailsCubitStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsDetailsCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataState = null,
    Object? productDetails = null,
  }) {
    return _then(_$ProductDetailsCubitStateImpl(
      dataState: null == dataState
          ? _value.dataState
          : dataState // ignore: cast_nullable_to_non_nullable
              as DataState,
      productDetails: null == productDetails
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as PresentationProductDetails,
    ));
  }
}

/// @nodoc

class _$ProductDetailsCubitStateImpl extends _ProductDetailsCubitState {
  const _$ProductDetailsCubitStateImpl(
      {required this.dataState, required this.productDetails})
      : super._();

  @override
  final DataState dataState;
  @override
  final PresentationProductDetails productDetails;

  @override
  String toString() {
    return 'ProductsDetailsCubitState(dataState: $dataState, productDetails: $productDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsCubitStateImpl &&
            (identical(other.dataState, dataState) ||
                other.dataState == dataState) &&
            (identical(other.productDetails, productDetails) ||
                other.productDetails == productDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataState, productDetails);

  /// Create a copy of ProductsDetailsCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsCubitStateImplCopyWith<_$ProductDetailsCubitStateImpl>
      get copyWith => __$$ProductDetailsCubitStateImplCopyWithImpl<
          _$ProductDetailsCubitStateImpl>(this, _$identity);
}

abstract class _ProductDetailsCubitState extends ProductsDetailsCubitState {
  const factory _ProductDetailsCubitState(
          {required final DataState dataState,
          required final PresentationProductDetails productDetails}) =
      _$ProductDetailsCubitStateImpl;
  const _ProductDetailsCubitState._() : super._();

  @override
  DataState get dataState;
  @override
  PresentationProductDetails get productDetails;

  /// Create a copy of ProductsDetailsCubitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailsCubitStateImplCopyWith<_$ProductDetailsCubitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
