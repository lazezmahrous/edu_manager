part of 'get_address_cubit.dart';

@freezed
class GetAddressState with _$GetAddressState {
  const factory GetAddressState.initial() = _Initial;
  const factory GetAddressState.loading() = _Loading;
  const factory GetAddressState.success({required Position location }) = _Success;
  const factory GetAddressState.failure({required String errMessage}) = _Failure;
}
