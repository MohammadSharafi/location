// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_pin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationPinEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLocationPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLocationPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLocationPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocationPin value) getLocationPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocationPin value)? getLocationPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocationPin value)? getLocationPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationPinEventCopyWith<$Res> {
  factory $LocationPinEventCopyWith(
          LocationPinEvent value, $Res Function(LocationPinEvent) then) =
      _$LocationPinEventCopyWithImpl<$Res, LocationPinEvent>;
}

/// @nodoc
class _$LocationPinEventCopyWithImpl<$Res, $Val extends LocationPinEvent>
    implements $LocationPinEventCopyWith<$Res> {
  _$LocationPinEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetLocationPinCopyWith<$Res> {
  factory _$$GetLocationPinCopyWith(
          _$GetLocationPin value, $Res Function(_$GetLocationPin) then) =
      __$$GetLocationPinCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLocationPinCopyWithImpl<$Res>
    extends _$LocationPinEventCopyWithImpl<$Res, _$GetLocationPin>
    implements _$$GetLocationPinCopyWith<$Res> {
  __$$GetLocationPinCopyWithImpl(
      _$GetLocationPin _value, $Res Function(_$GetLocationPin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetLocationPin implements GetLocationPin {
  const _$GetLocationPin();

  @override
  String toString() {
    return 'LocationPinEvent.getLocationPin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetLocationPin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLocationPin,
  }) {
    return getLocationPin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLocationPin,
  }) {
    return getLocationPin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLocationPin,
    required TResult orElse(),
  }) {
    if (getLocationPin != null) {
      return getLocationPin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLocationPin value) getLocationPin,
  }) {
    return getLocationPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLocationPin value)? getLocationPin,
  }) {
    return getLocationPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLocationPin value)? getLocationPin,
    required TResult orElse(),
  }) {
    if (getLocationPin != null) {
      return getLocationPin(this);
    }
    return orElse();
  }
}

abstract class GetLocationPin implements LocationPinEvent {
  const factory GetLocationPin() = _$GetLocationPin;
}

/// @nodoc
mixin _$LocationPinState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  Option<Either<LocationPinFailure, Map<String, List<Location>>>>
      get locationPinFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationPinStateCopyWith<LocationPinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationPinStateCopyWith<$Res> {
  factory $LocationPinStateCopyWith(
          LocationPinState value, $Res Function(LocationPinState) then) =
      _$LocationPinStateCopyWithImpl<$Res, LocationPinState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      bool showErrorMessage,
      Option<Either<LocationPinFailure, Map<String, List<Location>>>>
          locationPinFailureOrSuccessOption});
}

/// @nodoc
class _$LocationPinStateCopyWithImpl<$Res, $Val extends LocationPinState>
    implements $LocationPinStateCopyWith<$Res> {
  _$LocationPinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? showErrorMessage = null,
    Object? locationPinFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      locationPinFailureOrSuccessOption: null ==
              locationPinFailureOrSuccessOption
          ? _value.locationPinFailureOrSuccessOption
          : locationPinFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<LocationPinFailure, Map<String, List<Location>>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationPinStateCopyWith<$Res>
    implements $LocationPinStateCopyWith<$Res> {
  factory _$$_LocationPinStateCopyWith(
          _$_LocationPinState value, $Res Function(_$_LocationPinState) then) =
      __$$_LocationPinStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      bool showErrorMessage,
      Option<Either<LocationPinFailure, Map<String, List<Location>>>>
          locationPinFailureOrSuccessOption});
}

/// @nodoc
class __$$_LocationPinStateCopyWithImpl<$Res>
    extends _$LocationPinStateCopyWithImpl<$Res, _$_LocationPinState>
    implements _$$_LocationPinStateCopyWith<$Res> {
  __$$_LocationPinStateCopyWithImpl(
      _$_LocationPinState _value, $Res Function(_$_LocationPinState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? showErrorMessage = null,
    Object? locationPinFailureOrSuccessOption = null,
  }) {
    return _then(_$_LocationPinState(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      locationPinFailureOrSuccessOption: null ==
              locationPinFailureOrSuccessOption
          ? _value.locationPinFailureOrSuccessOption
          : locationPinFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<LocationPinFailure, Map<String, List<Location>>>>,
    ));
  }
}

/// @nodoc

class _$_LocationPinState implements _LocationPinState {
  const _$_LocationPinState(
      {required this.isSubmitting,
      required this.showErrorMessage,
      required this.locationPinFailureOrSuccessOption});

  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessage;
  @override
  final Option<Either<LocationPinFailure, Map<String, List<Location>>>>
      locationPinFailureOrSuccessOption;

  @override
  String toString() {
    return 'LocationPinState(isSubmitting: $isSubmitting, showErrorMessage: $showErrorMessage, locationPinFailureOrSuccessOption: $locationPinFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationPinState &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.locationPinFailureOrSuccessOption,
                    locationPinFailureOrSuccessOption) ||
                other.locationPinFailureOrSuccessOption ==
                    locationPinFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSubmitting, showErrorMessage,
      locationPinFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationPinStateCopyWith<_$_LocationPinState> get copyWith =>
      __$$_LocationPinStateCopyWithImpl<_$_LocationPinState>(this, _$identity);
}

abstract class _LocationPinState implements LocationPinState {
  const factory _LocationPinState(
      {required final bool isSubmitting,
      required final bool showErrorMessage,
      required final Option<
              Either<LocationPinFailure, Map<String, List<Location>>>>
          locationPinFailureOrSuccessOption}) = _$_LocationPinState;

  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessage;
  @override
  Option<Either<LocationPinFailure, Map<String, List<Location>>>>
      get locationPinFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_LocationPinStateCopyWith<_$_LocationPinState> get copyWith =>
      throw _privateConstructorUsedError;
}
