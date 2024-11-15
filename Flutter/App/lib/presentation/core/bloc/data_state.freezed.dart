// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(AppError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(AppError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataLoading value) loading,
    required TResult Function(DataLoaded value) loaded,
    required TResult Function(DataError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataLoading value)? loading,
    TResult? Function(DataLoaded value)? loaded,
    TResult? Function(DataError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataLoading value)? loading,
    TResult Function(DataLoaded value)? loaded,
    TResult Function(DataError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<$Res> {
  factory $DataStateCopyWith(DataState value, $Res Function(DataState) then) =
      _$DataStateCopyWithImpl<$Res, DataState>;
}

/// @nodoc
class _$DataStateCopyWithImpl<$Res, $Val extends DataState>
    implements $DataStateCopyWith<$Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DataLoadingImplCopyWith<$Res> {
  factory _$$DataLoadingImplCopyWith(
          _$DataLoadingImpl value, $Res Function(_$DataLoadingImpl) then) =
      __$$DataLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataLoadingImplCopyWithImpl<$Res>
    extends _$DataStateCopyWithImpl<$Res, _$DataLoadingImpl>
    implements _$$DataLoadingImplCopyWith<$Res> {
  __$$DataLoadingImplCopyWithImpl(
      _$DataLoadingImpl _value, $Res Function(_$DataLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DataLoadingImpl implements DataLoading {
  const _$DataLoadingImpl();

  @override
  String toString() {
    return 'DataState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(AppError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(AppError error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataLoading value) loading,
    required TResult Function(DataLoaded value) loaded,
    required TResult Function(DataError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataLoading value)? loading,
    TResult? Function(DataLoaded value)? loaded,
    TResult? Function(DataError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataLoading value)? loading,
    TResult Function(DataLoaded value)? loaded,
    TResult Function(DataError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DataLoading implements DataState {
  const factory DataLoading() = _$DataLoadingImpl;
}

/// @nodoc
abstract class _$$DataLoadedImplCopyWith<$Res> {
  factory _$$DataLoadedImplCopyWith(
          _$DataLoadedImpl value, $Res Function(_$DataLoadedImpl) then) =
      __$$DataLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataLoadedImplCopyWithImpl<$Res>
    extends _$DataStateCopyWithImpl<$Res, _$DataLoadedImpl>
    implements _$$DataLoadedImplCopyWith<$Res> {
  __$$DataLoadedImplCopyWithImpl(
      _$DataLoadedImpl _value, $Res Function(_$DataLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DataLoadedImpl implements DataLoaded {
  const _$DataLoadedImpl();

  @override
  String toString() {
    return 'DataState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(AppError error) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(AppError error)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataLoading value) loading,
    required TResult Function(DataLoaded value) loaded,
    required TResult Function(DataError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataLoading value)? loading,
    TResult? Function(DataLoaded value)? loaded,
    TResult? Function(DataError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataLoading value)? loading,
    TResult Function(DataLoaded value)? loaded,
    TResult Function(DataError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class DataLoaded implements DataState {
  const factory DataLoaded() = _$DataLoadedImpl;
}

/// @nodoc
abstract class _$$DataErrorImplCopyWith<$Res> {
  factory _$$DataErrorImplCopyWith(
          _$DataErrorImpl value, $Res Function(_$DataErrorImpl) then) =
      __$$DataErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError error});

  $AppErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$DataErrorImplCopyWithImpl<$Res>
    extends _$DataStateCopyWithImpl<$Res, _$DataErrorImpl>
    implements _$$DataErrorImplCopyWith<$Res> {
  __$$DataErrorImplCopyWithImpl(
      _$DataErrorImpl _value, $Res Function(_$DataErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DataErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppErrorCopyWith<$Res> get error {
    return $AppErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$DataErrorImpl implements DataError {
  const _$DataErrorImpl(this.error);

  @override
  final AppError error;

  @override
  String toString() {
    return 'DataState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataErrorImplCopyWith<_$DataErrorImpl> get copyWith =>
      __$$DataErrorImplCopyWithImpl<_$DataErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(AppError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(AppError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataLoading value) loading,
    required TResult Function(DataLoaded value) loaded,
    required TResult Function(DataError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataLoading value)? loading,
    TResult? Function(DataLoaded value)? loaded,
    TResult? Function(DataError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataLoading value)? loading,
    TResult Function(DataLoaded value)? loaded,
    TResult Function(DataError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DataError implements DataState {
  const factory DataError(final AppError error) = _$DataErrorImpl;

  AppError get error;

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataErrorImplCopyWith<_$DataErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
