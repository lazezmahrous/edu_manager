import 'package:edu_manager/features/signup/data/logic/cubit/sign_up_cubit.dart';
import 'package:edu_manager/features/signup/ui/widgets/student_signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ValidationUserDataAndDoSignup extends StatefulWidget {
  const ValidationUserDataAndDoSignup({super.key});

  @override
  State<ValidationUserDataAndDoSignup> createState() =>
      _ValidationUserDataAndDoSignupState();
}

class _ValidationUserDataAndDoSignupState
    extends State<ValidationUserDataAndDoSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              context.read<SignUpCubit>().emitSignupStates();
            },
            child: const Text('data'),
          ),
          const Text('data'),
        ],
      )),
    );
  }
}
