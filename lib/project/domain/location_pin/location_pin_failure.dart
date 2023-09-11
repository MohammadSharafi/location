import 'package:freezed_annotation/freezed_annotation.dart';
part 'location_pin_failure.freezed.dart';

@freezed
abstract class LocationPinFailure with _$LocationPinFailure {
  const factory LocationPinFailure.serverError() = ServerError;
  const factory LocationPinFailure.failed() = Failed;
  const factory LocationPinFailure.error() = Error;
  const factory LocationPinFailure.empty() = Empty;

}