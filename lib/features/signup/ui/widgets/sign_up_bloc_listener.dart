// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:edu_manager/core/helpers/extensions.dart';
// import '../../../../core/helpers/show_snack_bar.dart';
// import '../../../../core/routing/routers.dart';
// // import '../../logic/cubit/sign_up_cubit.dart';
// // import '../../logic/cubit/sign_up_state.dart';

// class SignUpBlocListener extends StatefulWidget {
//   const SignUpBlocListener({super.key});
//   @override
//   State<SignUpBlocListener> createState() => _SignUpBlocListenerState();
// }

// class _SignUpBlocListenerState extends State<SignUpBlocListener> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<SignUpCubit, SignUpState>(
//       listener: (context, state) {
//         state.whenOrNull(error: (errorMessage) {
//           switch (errorMessage) {
//             case 'weak_password':
//               showSnackBarEror(context, 'The Password Is Very Short');
//               break;
//             case 'user_already_exists':
//               showSnackBarEror(
//                   context, 'Email address already exists in the system');
//               break;
//             default:
//               showSnackBarEror(context, 'error');
//           }
//         }, success: () async {
//           context.pushNamedAndRemoveUntil(
//             Routes.bottomNavBar,
//             arguments: null,
//             predicate: (route) => false,
//           );
//         });
//       },
//       child: const SizedBox.shrink(),
//     );
//   }
// }
