part of 'location_pin_bloc.dart';


@freezed
abstract class LocationPinState with _$LocationPinState {
  const factory LocationPinState({
    required bool isSubmitting,
    required bool showErrorMessage,
    required Option<Either<LocationPinFailure, Map<String,List<Location>>>>
    locationPinFailureOrSuccessOption,
  }) = _LocationPinState;

  factory LocationPinState.initial() => LocationPinState(
      isSubmitting: false,
      showErrorMessage: false,
      locationPinFailureOrSuccessOption: none());
}
