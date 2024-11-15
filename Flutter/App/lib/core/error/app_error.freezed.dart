// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppError _$AppErrorFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'notFound':
      return _AppErrorNotFound.fromJson(json);
    case 'connection':
      return _AppErrorConnection.fromJson(json);
    case 'unknown':
      return _AppErrorUnknown.fromJson(json);
    case 'programmatic':
      return _AppErrorProgrammatic.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AppError',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AppError {
  Object? get source => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? source) notFound,
    required TResult Function(Object? source) connection,
    required TResult Function(Object? source) unknown,
    required TResult Function(Object? source) programmatic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? source)? notFound,
    TResult? Function(Object? source)? connection,
    TResult? Function(Object? source)? unknown,
    TResult? Function(Object? source)? programmatic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? source)? notFound,
    TResult Function(Object? source)? connection,
    TResult Function(Object? source)? unknown,
    TResult Function(Object? source)? programmatic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppErrorNotFound value) notFound,
    required TResult Function(_AppErrorConnection value) connection,
    required TResult Function(_AppErrorUnknown value) unknown,
    required TResult Function(_AppErrorProgrammatic value) programmatic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppErrorNotFound value)? notFound,
    TResult? Function(_AppErrorConnection value)? connection,
    TResult? Function(_AppErrorUnknown value)? unknown,
    TResult? Function(_AppErrorProgrammatic value)? programmatic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppErrorNotFound value)? notFound,
    TResult Function(_AppErrorConnection value)? connection,
    TResult Function(_AppErrorUnknown value)? unknown,
    TResult Function(_AppErrorProgrammatic value)? programmatic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this AppError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppErrorCopyWith<AppError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res, AppError>;
  @useResult
  $Res call({Object? source});
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res, $Val extends AppError>
    implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      source: freezed == source ? _value.source : source,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppErrorNotFoundImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$AppErrorNotFoundImplCopyWith(_$AppErrorNotFoundImpl value,
          $Res Function(_$AppErrorNotFoundImpl) then) =
      __$$AppErrorNotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object? source});
}

/// @nodoc
class __$$AppErrorNotFoundImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$AppErrorNotFoundImpl>
    implements _$$AppErrorNotFoundImplCopyWith<$Res> {
  __$$AppErrorNotFoundImplCopyWithImpl(_$AppErrorNotFoundImpl _value,
      $Res Function(_$AppErrorNotFoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
  }) {
    return _then(_$AppErrorNotFoundImpl(
      source: freezed == source ? _value.source : source,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppErrorNotFoundImpl extends _AppErrorNotFound {
  const _$AppErrorNotFoundImpl({required this.source, final String? $type})
      : $type = $type ?? 'notFound',
        super._();

  factory _$AppErrorNotFoundImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppErrorNotFoundImplFromJson(json);

  @override
  final Object? source;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppError.notFound(source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppErrorNotFoundImpl &&
            const DeepCollectionEquality().equals(other.source, source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(source));

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppErrorNotFoundImplCopyWith<_$AppErrorNotFoundImpl> get copyWith =>
      __$$AppErrorNotFoundImplCopyWithImpl<_$AppErrorNotFoundImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? source) notFound,
    required TResult Function(Object? source) connection,
    required TResult Function(Object? source) unknown,
    required TResult Function(Object? source) programmatic,
  }) {
    return notFound(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? source)? notFound,
    TResult? Function(Object? source)? connection,
    TResult? Function(Object? source)? unknown,
    TResult? Function(Object? source)? programmatic,
  }) {
    return notFound?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? source)? notFound,
    TResult Function(Object? source)? connection,
    TResult Function(Object? source)? unknown,
    TResult Function(Object? source)? programmatic,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppErrorNotFound value) notFound,
    required TResult Function(_AppErrorConnection value) connection,
    required TResult Function(_AppErrorUnknown value) unknown,
    required TResult Function(_AppErrorProgrammatic value) programmatic,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppErrorNotFound value)? notFound,
    TResult? Function(_AppErrorConnection value)? connection,
    TResult? Function(_AppErrorUnknown value)? unknown,
    TResult? Function(_AppErrorProgrammatic value)? programmatic,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppErrorNotFound value)? notFound,
    TResult Function(_AppErrorConnection value)? connection,
    TResult Function(_AppErrorUnknown value)? unknown,
    TResult Function(_AppErrorProgrammatic value)? programmatic,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppErrorNotFoundImplToJson(
      this,
    );
  }
}

abstract class _AppErrorNotFound extends AppError {
  const factory _AppErrorNotFound({required final Object? source}) =
      _$AppErrorNotFoundImpl;
  const _AppErrorNotFound._() : super._();

  factory _AppErrorNotFound.fromJson(Map<String, dynamic> json) =
      _$AppErrorNotFoundImpl.fromJson;

  @override
  Object? get source;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppErrorNotFoundImplCopyWith<_$AppErrorNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppErrorConnectionImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$AppErrorConnectionImplCopyWith(_$AppErrorConnectionImpl value,
          $Res Function(_$AppErrorConnectionImpl) then) =
      __$$AppErrorConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object? source});
}

/// @nodoc
class __$$AppErrorConnectionImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$AppErrorConnectionImpl>
    implements _$$AppErrorConnectionImplCopyWith<$Res> {
  __$$AppErrorConnectionImplCopyWithImpl(_$AppErrorConnectionImpl _value,
      $Res Function(_$AppErrorConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
  }) {
    return _then(_$AppErrorConnectionImpl(
      source: freezed == source ? _value.source : source,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppErrorConnectionImpl extends _AppErrorConnection {
  const _$AppErrorConnectionImpl({required this.source, final String? $type})
      : $type = $type ?? 'connection',
        super._();

  factory _$AppErrorConnectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppErrorConnectionImplFromJson(json);

  @override
  final Object? source;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppError.connection(source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppErrorConnectionImpl &&
            const DeepCollectionEquality().equals(other.source, source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(source));

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppErrorConnectionImplCopyWith<_$AppErrorConnectionImpl> get copyWith =>
      __$$AppErrorConnectionImplCopyWithImpl<_$AppErrorConnectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? source) notFound,
    required TResult Function(Object? source) connection,
    required TResult Function(Object? source) unknown,
    required TResult Function(Object? source) programmatic,
  }) {
    return connection(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? source)? notFound,
    TResult? Function(Object? source)? connection,
    TResult? Function(Object? source)? unknown,
    TResult? Function(Object? source)? programmatic,
  }) {
    return connection?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? source)? notFound,
    TResult Function(Object? source)? connection,
    TResult Function(Object? source)? unknown,
    TResult Function(Object? source)? programmatic,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppErrorNotFound value) notFound,
    required TResult Function(_AppErrorConnection value) connection,
    required TResult Function(_AppErrorUnknown value) unknown,
    required TResult Function(_AppErrorProgrammatic value) programmatic,
  }) {
    return connection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppErrorNotFound value)? notFound,
    TResult? Function(_AppErrorConnection value)? connection,
    TResult? Function(_AppErrorUnknown value)? unknown,
    TResult? Function(_AppErrorProgrammatic value)? programmatic,
  }) {
    return connection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppErrorNotFound value)? notFound,
    TResult Function(_AppErrorConnection value)? connection,
    TResult Function(_AppErrorUnknown value)? unknown,
    TResult Function(_AppErrorProgrammatic value)? programmatic,
    required TResult orElse(),
  }) {
    if (connection != null) {
      return connection(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppErrorConnectionImplToJson(
      this,
    );
  }
}

abstract class _AppErrorConnection extends AppError {
  const factory _AppErrorConnection({required final Object? source}) =
      _$AppErrorConnectionImpl;
  const _AppErrorConnection._() : super._();

  factory _AppErrorConnection.fromJson(Map<String, dynamic> json) =
      _$AppErrorConnectionImpl.fromJson;

  @override
  Object? get source;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppErrorConnectionImplCopyWith<_$AppErrorConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppErrorUnknownImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$AppErrorUnknownImplCopyWith(_$AppErrorUnknownImpl value,
          $Res Function(_$AppErrorUnknownImpl) then) =
      __$$AppErrorUnknownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object? source});
}

/// @nodoc
class __$$AppErrorUnknownImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$AppErrorUnknownImpl>
    implements _$$AppErrorUnknownImplCopyWith<$Res> {
  __$$AppErrorUnknownImplCopyWithImpl(
      _$AppErrorUnknownImpl _value, $Res Function(_$AppErrorUnknownImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
  }) {
    return _then(_$AppErrorUnknownImpl(
      source: freezed == source ? _value.source : source,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppErrorUnknownImpl extends _AppErrorUnknown {
  const _$AppErrorUnknownImpl({required this.source, final String? $type})
      : $type = $type ?? 'unknown',
        super._();

  factory _$AppErrorUnknownImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppErrorUnknownImplFromJson(json);

  @override
  final Object? source;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppError.unknown(source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppErrorUnknownImpl &&
            const DeepCollectionEquality().equals(other.source, source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(source));

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppErrorUnknownImplCopyWith<_$AppErrorUnknownImpl> get copyWith =>
      __$$AppErrorUnknownImplCopyWithImpl<_$AppErrorUnknownImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? source) notFound,
    required TResult Function(Object? source) connection,
    required TResult Function(Object? source) unknown,
    required TResult Function(Object? source) programmatic,
  }) {
    return unknown(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? source)? notFound,
    TResult? Function(Object? source)? connection,
    TResult? Function(Object? source)? unknown,
    TResult? Function(Object? source)? programmatic,
  }) {
    return unknown?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? source)? notFound,
    TResult Function(Object? source)? connection,
    TResult Function(Object? source)? unknown,
    TResult Function(Object? source)? programmatic,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppErrorNotFound value) notFound,
    required TResult Function(_AppErrorConnection value) connection,
    required TResult Function(_AppErrorUnknown value) unknown,
    required TResult Function(_AppErrorProgrammatic value) programmatic,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppErrorNotFound value)? notFound,
    TResult? Function(_AppErrorConnection value)? connection,
    TResult? Function(_AppErrorUnknown value)? unknown,
    TResult? Function(_AppErrorProgrammatic value)? programmatic,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppErrorNotFound value)? notFound,
    TResult Function(_AppErrorConnection value)? connection,
    TResult Function(_AppErrorUnknown value)? unknown,
    TResult Function(_AppErrorProgrammatic value)? programmatic,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppErrorUnknownImplToJson(
      this,
    );
  }
}

abstract class _AppErrorUnknown extends AppError {
  const factory _AppErrorUnknown({required final Object? source}) =
      _$AppErrorUnknownImpl;
  const _AppErrorUnknown._() : super._();

  factory _AppErrorUnknown.fromJson(Map<String, dynamic> json) =
      _$AppErrorUnknownImpl.fromJson;

  @override
  Object? get source;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppErrorUnknownImplCopyWith<_$AppErrorUnknownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppErrorProgrammaticImplCopyWith<$Res>
    implements $AppErrorCopyWith<$Res> {
  factory _$$AppErrorProgrammaticImplCopyWith(_$AppErrorProgrammaticImpl value,
          $Res Function(_$AppErrorProgrammaticImpl) then) =
      __$$AppErrorProgrammaticImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object? source});
}

/// @nodoc
class __$$AppErrorProgrammaticImplCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$AppErrorProgrammaticImpl>
    implements _$$AppErrorProgrammaticImplCopyWith<$Res> {
  __$$AppErrorProgrammaticImplCopyWithImpl(_$AppErrorProgrammaticImpl _value,
      $Res Function(_$AppErrorProgrammaticImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
  }) {
    return _then(_$AppErrorProgrammaticImpl(
      source: freezed == source ? _value.source : source,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppErrorProgrammaticImpl extends _AppErrorProgrammatic {
  const _$AppErrorProgrammaticImpl({required this.source, final String? $type})
      : $type = $type ?? 'programmatic',
        super._();

  factory _$AppErrorProgrammaticImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppErrorProgrammaticImplFromJson(json);

  @override
  final Object? source;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AppError.programmatic(source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppErrorProgrammaticImpl &&
            const DeepCollectionEquality().equals(other.source, source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(source));

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppErrorProgrammaticImplCopyWith<_$AppErrorProgrammaticImpl>
      get copyWith =>
          __$$AppErrorProgrammaticImplCopyWithImpl<_$AppErrorProgrammaticImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? source) notFound,
    required TResult Function(Object? source) connection,
    required TResult Function(Object? source) unknown,
    required TResult Function(Object? source) programmatic,
  }) {
    return programmatic(source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? source)? notFound,
    TResult? Function(Object? source)? connection,
    TResult? Function(Object? source)? unknown,
    TResult? Function(Object? source)? programmatic,
  }) {
    return programmatic?.call(source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? source)? notFound,
    TResult Function(Object? source)? connection,
    TResult Function(Object? source)? unknown,
    TResult Function(Object? source)? programmatic,
    required TResult orElse(),
  }) {
    if (programmatic != null) {
      return programmatic(source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppErrorNotFound value) notFound,
    required TResult Function(_AppErrorConnection value) connection,
    required TResult Function(_AppErrorUnknown value) unknown,
    required TResult Function(_AppErrorProgrammatic value) programmatic,
  }) {
    return programmatic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppErrorNotFound value)? notFound,
    TResult? Function(_AppErrorConnection value)? connection,
    TResult? Function(_AppErrorUnknown value)? unknown,
    TResult? Function(_AppErrorProgrammatic value)? programmatic,
  }) {
    return programmatic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppErrorNotFound value)? notFound,
    TResult Function(_AppErrorConnection value)? connection,
    TResult Function(_AppErrorUnknown value)? unknown,
    TResult Function(_AppErrorProgrammatic value)? programmatic,
    required TResult orElse(),
  }) {
    if (programmatic != null) {
      return programmatic(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AppErrorProgrammaticImplToJson(
      this,
    );
  }
}

abstract class _AppErrorProgrammatic extends AppError {
  const factory _AppErrorProgrammatic({required final Object? source}) =
      _$AppErrorProgrammaticImpl;
  const _AppErrorProgrammatic._() : super._();

  factory _AppErrorProgrammatic.fromJson(Map<String, dynamic> json) =
      _$AppErrorProgrammaticImpl.fromJson;

  @override
  Object? get source;

  /// Create a copy of AppError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppErrorProgrammaticImplCopyWith<_$AppErrorProgrammaticImpl>
      get copyWith => throw _privateConstructorUsedError;
}
