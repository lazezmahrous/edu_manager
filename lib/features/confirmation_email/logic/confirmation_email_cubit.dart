import 'package:bloc/bloc.dart';
import 'package:edu_manager/core/networking/supabase_error_handler.dart';
import 'package:edu_manager/features/confirmation_email/data/repos/confirmation_email_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirmation_email_state.dart';
part 'confirmation_email_cubit.freezed.dart';

class ConfirmationEmailCubit extends Cubit<ConfirmationEmailState> {
  final ConfirmationEmailRepo _confirmationEmailRepo;
  ConfirmationEmailCubit(this._confirmationEmailRepo)
      : super(const ConfirmationEmailState.initial());

  final TextEditingController emialController = TextEditingController();

  void emitSendMagicLinkStates() async {
    emit(const ConfirmationEmailState.loading());

    final response = await _confirmationEmailRepo
        .sendConfirmationEmail('lazezma7rous@gmail.com');

    response.when(
      success: (data) => emit(const ConfirmationEmailState.success()),
      failure: (errorHandler) => emit(
        ConfirmationEmailState.failure(errorHandler),
      ),
    );
  }
}
