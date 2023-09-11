import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:location_mohammad_sharafi/project/domain/location_pin/location_pin_failure.dart';
import 'package:web_socket_channel/io.dart';

import '../../../common/helpers/map_helper.dart';
import '../../domain/location_pin/models/location.dart';

part 'location_pin_bloc.freezed.dart';

part 'location_pin_event.dart';
part 'location_pin_state.dart';

@injectable
class LocationPinBloc extends Bloc<LocationPinEvent, LocationPinState> {
  final _channel =
  IOWebSocketChannel.connect('ws://flutter-test.iran.liara.run/ws/locations');
  List<Location> _accumulatedLocations = [];

  // Constructor for LocationPinBloc
  LocationPinBloc()
      : super(LocationPinState.initial()) {
    // Register an event handler for LocationPinEvent
    on<LocationPinEvent>(_onLocationPinEvent);
  }

  // Override the close method to close the WebSocket channel when the bloc is closed
  @override
  Future<void> close() {
    _channel.sink.close();
    return super.close();
  }

  // Event handler for LocationPinEvent
  Future<void> _onLocationPinEvent(
      LocationPinEvent event, Emitter<LocationPinState> emit) async {
    await event.map(
      // If the event is of type getLocationPin, call _onLocationPin method
      getLocationPin: (value) async => await _onLocationPin(event, emit, value),
    );
  }

  // Method to handle the getLocationPin event
  Future<void> _onLocationPin(LocationPinEvent event,
      Emitter<LocationPinState> emit, GetLocationPin value) async {
    // Update the state to indicate that a location update is in progress
    emit(state.copyWith(
      isSubmitting: true,
      locationPinFailureOrSuccessOption: none(),
    ));

    try {
      // Listen to WebSocket messages and collect locations.
      await for (var message in _channel.stream) {
        Location parsedLocations = parseLocations(message);
        _accumulatedLocations.add(parsedLocations);

        // Update the state with the collected locations and reset the submission status
        emit(state.copyWith(
          isSubmitting: false,
          showErrorMessage: false,
          locationPinFailureOrSuccessOption:
          optionOf(right({'data': _accumulatedLocations})),
        ));
      }
    } catch (error) {
      print(error);
      // If an error occurs, update the state to indicate the error and failure
      emit(state.copyWith(
        isSubmitting: false,
        showErrorMessage: true,
        locationPinFailureOrSuccessOption:
        optionOf(left(LocationPinFailure.error())),
      ));
    }
  }
}
