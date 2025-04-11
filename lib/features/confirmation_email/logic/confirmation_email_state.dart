part of 'confirmation_email_cubit.dart';

@freezed
class ConfirmationEmailState with _$ConfirmationEmailState {
  const factory ConfirmationEmailState.initial() = _Initial;
  const factory ConfirmationEmailState.loading() = Loading;
  const factory ConfirmationEmailState.success() = Success;
  const factory ConfirmationEmailState.failure(SupabaseErrorHandler errorHandler) = Failure;
}
