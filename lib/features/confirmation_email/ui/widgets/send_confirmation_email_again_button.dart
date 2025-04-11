import 'dart:async';

import 'package:edu_manager/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/global widgets/app_buttons.dart';
import '../../logic/confirmation_email_cubit.dart';

class SendConfirmationEmailAgainButton extends StatefulWidget {
  final String email;

  const SendConfirmationEmailAgainButton({
    super.key,
    required this.email,
  });

  @override
  State<SendConfirmationEmailAgainButton> createState() =>
      _SendConfirmationEmailAgainButtonState();
}

class _SendConfirmationEmailAgainButtonState
    extends State<SendConfirmationEmailAgainButton> {
  bool isCooldown = true;
  int remainingSeconds = 120;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startCooldown();
  }

  void startCooldown() {
    timer?.cancel();
    remainingSeconds = 120;
    isCooldown = true;

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        remainingSeconds--;
        if (remainingSeconds == 0) {
          isCooldown = false;
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppGradientButton(
      color: isCooldown ? ColorsManager.lightGray : null,
      size: Size(double.infinity, 40.h),
      text: isCooldown
          ? 'إرسال رابط اخر بعد ${remainingSeconds}s'
          : 'إبعتلي رابط التحقق',
      onPressed: isCooldown
          ? () {}
          : () async {
              context.read<ConfirmationEmailCubit>().emialController.text =
                  widget.email;
              context.read<ConfirmationEmailCubit>().emitSendMagicLinkStates();
              startCooldown();
            },
    );
  }
}
