import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import '../../networking/services/maps_services.dart';

part 'get_address_state.dart';
part 'get_address_cubit.freezed.dart';

class GetAddressCubit extends Cubit<GetAddressState> {
  final MapsServices _mapsService;

  GetAddressCubit(this._mapsService) : super(const GetAddressState.initial());

  void emitGetAdressStates() async {
    emit(const GetAddressState.loading());

    try {
      Position? location = await _mapsService.getCurrentLocation();
      Placemark? place;

      try {
        place = await _mapsService.getAddressFromCoordinates(location!);
      } catch (e) {
        debugPrint("Failed to get address: $e");
      }

      debugPrint("${location!.latitude}");
      debugPrint("${location.longitude}");

      emit(GetAddressState.success(
        location: location,
        address: place != null
            ? '${place.country} ${place.administrativeArea} ${place.subAdministrativeArea} ${place.locality}'
            : 'Service not Available',
      ));
    } catch (e) {
      debugPrint("exception ========= $e");
      emit(GetAddressState.failure(errMessage: e.toString()));
    }
  }
}
