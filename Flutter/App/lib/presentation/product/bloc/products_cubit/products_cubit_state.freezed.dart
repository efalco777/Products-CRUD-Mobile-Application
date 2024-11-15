// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_cubit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsCubitState {
  DataState get dataState => throw _privateConstructorUsedError;
  List<PresentationProduct> get products => throw _privateConstructorUsedError;

  /// Create a copy of ProductsCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsCubitStateCopyWith<ProductsCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsCubitStateCopyWith<$Res> {
  factory $ProductsCubitStateCopyWith(
          ProductsCubitState value, $Res Function(ProductsCubitState) then) =
      _$ProductsCubitStateCopyWithImpl<$Res, ProductsCubitState>;
  @useResult
  $Res call({DataState dataState, List<PresentationProduct> products});

  $DataStateCopyWith<$Res> get dataState;
}

/// @nodoc
class _$ProductsCubitStateCopyWithImpl<$Res, $Val extends ProductsCubitState>
    implements $ProductsCubitStateCopyWith<$Res> {
  _$ProductsCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataState = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      dataState: null == dataState
          ? _value.dataState
          : dataState // ignore: cast_nullable_to_non_nullable
              as DataState,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<PresentationProduct>,
    ) as $Val);
  }

  /// Create a copy of ProductsCubitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataStateCopyWith<$Res> get dataState {
    return $DataStateCopyWith<$Res>(_value.dataState, (value) {
      return _then(_value.copyWith(dataState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsCubitStateImplCopyWith<$Res>
    implements $ProductsCubitStateCopyWith<$Res> {
  factory _$$ProductsCubitStateImplCopyWith(_$ProductsCubitStateImpl value,
          $Res Function(_$ProductsCubitStateImpl) then) =
      __$$ProductsCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataState dataState, List<PresentationProduct> products});

  @override
  $DataStateCopyWith<$Res> get dataState;
}

/// @nodoc
class __$$ProductsCubitStateImplCopyWithImpl<$Res>
    extends _$ProductsCubitStateCopyWithImpl<$Res, _$ProductsCubitStateImpl>
    implements _$$ProductsCubitStateImplCopyWith<$Res> {
  __$$ProductsCubitStateImplCopyWithImpl(_$ProductsCubitStateImpl _value,
      $Res Function(_$ProductsCubitStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataState = null,
    Object? products = null,
  }) {
    return _then(_$ProductsCubitStateImpl(
      dataState: null == dataState
          ? _value.dataState
          : dataState // ignore: cast_nullable_to_non_nullable
              as DataState,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<PresentationProduct>,
    ));
  }
}

/// @nodoc

class _$ProductsCubitStateImpl extends _ProductsCubitState {
  const _$ProductsCubitStateImpl(
      {required this.dataState,
      required final List<PresentationProduct> products})
      : _products = products,
        super._();

  @override
  final DataState dataState;
  final List<PresentationProduct> _products;
  @override
  List<PresentationProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductsCubitState(dataState: $dataState, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsCubitStateImpl &&
            (identical(other.dataState, dataState) ||
                other.dataState == dataState) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, dataState, const DeepCollectionEquality().hash(_products));

  /// Create a copy of ProductsCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsCubitStateImplCopyWith<_$ProductsCubitStateImpl> get copyWith =>
      __$$ProductsCubitStateImplCopyWithImpl<_$ProductsCubitStateImpl>(
          this, _$identity);
}

abstract class _ProductsCubitState extends ProductsCubitState {
  const factory _ProductsCubitState(
          {required final DataState dataState,
          required final List<PresentationProduct> products}) =
      _$ProductsCubitStateImpl;
  const _ProductsCubitState._() : super._();

  @override
  DataState get dataState;
  @override
  List<PresentationProduct> get products;

  /// Create a copy of ProductsCubitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsCubitStateImplCopyWith<_$ProductsCubitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
