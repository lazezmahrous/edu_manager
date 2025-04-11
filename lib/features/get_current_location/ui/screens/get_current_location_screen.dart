
import 'package:edu_manager/core/helpers/extensions.dart';
import 'package:edu_manager/features/get_current_location/ui/screens/map_webview_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
