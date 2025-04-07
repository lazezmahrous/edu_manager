import 'package:edu_manager/core/constans/app_svgs.dart';
import 'package:edu_manager/core/helpers/spacing.dart';
import 'package:edu_manager/features/select_user_type/ui/widgets/user_type_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/models/acdemy.dart';
import '../data/models/student.dart';
import '../data/models/teacher.dart';
import 'widgets/welcome_user_widget.dart';

class SelectUserTypeScreen extends StatefulWidget {
  const SelectUserTypeScreen({super.key});

  @override
  State<SelectUserTypeScreen> createState() => _SelectUserTypeScreenState();
}

class _SelectUserTypeScreenState extends State<SelectUserTypeScreen> {

  final List<Map<String, dynamic>> usersType = [
    {
      "type": Teacher(),
      "icon": AppSvgs.teacher,
      "title": "Teacher",
    },
    {
      "type": Student(),
      "icon": AppSvgs.userGraduate,
      "title": "Student",
    },
    {
      "type": Academy(),
      "icon": AppSvgs.center,
      "title": "Academy",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            children: [
              const WelcomeUserWidget(),
              verticalSpace(20),
              GridView.builder(
                shrinkWrap: true,
                itemCount: usersType.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  final user = usersType[index];
                  return UserTypeWidget(
                    icon: user["icon"]!,
                    type: user["title"]!,
                    userType: user['type'],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
