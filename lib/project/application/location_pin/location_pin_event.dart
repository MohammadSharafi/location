part of 'location_pin_bloc.dart';


@freezed
abstract class LocationPinEvent with _$LocationPinEvent {
  const factory LocationPinEvent.getLocationPin() = GetLocationPin;
}
