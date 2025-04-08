import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../networking/services/maps_services.dart';

part 'get_address_state.dart';
part 'get_address_cubit.freezed.dart';

class GetAddressCubit extends Cubit<GetAddressState> {
  final MapsServices _mapsService;
  final TextEditingController adressController = TextEditingController();

  GetAddressCubit(this._mapsService) : super(const GetAddressState.initial());

  void emitGetAdressStates() async {
    emit(const GetAddressState.loading());
    try {
      final location = await _mapsService.getCurrentLocation();
      // print('Location: $location');/

      emit(const GetAddressState.success());
    } catch (e) {
      print('Error: $e');

      debugPrint("exception ========= ${e}");
      emit(const GetAddressState.failure());
    }
  }
}
