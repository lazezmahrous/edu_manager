import 'package:edu_manager/core/constans/app_images.dart';
import 'package:edu_manager/core/global%20widgets/app_button.dart';
import 'package:edu_manager/core/global%20widgets/app_text_form_field.dart';
import 'package:edu_manager/core/helpers/extensions.dart';
import 'package:edu_manager/core/helpers/spacing.dart';
import 'package:edu_manager/core/theming/colors.dart';
import 'package:edu_manager/core/theming/styles.dart';
import 'package:edu_manager/features/get_current_location/ui/screens/map_webview_screen.dart';
import 'package:edu_manager/features/signup/data/logic/cubit/get_address_cubit.dart';
import 'package:edu_manager/features/signup/ui/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/get_current_address_bloc_builder.dart';
import '../widgets/request_get_current_location_widget.dart';

class GetCurrentLocationScreen extends StatefulWidget {
  const GetCurrentLocationScreen({super.key});

  @override
  State<GetCurrentLocationScreen> createState() =>
      _GetCurrentLocationScreenState();
}

class _GetCurrentLocationScreenState extends State<GetCurrentLocationScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.appBarWithArrowBack(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: const Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            MapWebViewScreen(lat: 30, lng: 30),
            RequestGetCurrentLocationWidget()
          ],
        ),
      ),
    );
  }
}
