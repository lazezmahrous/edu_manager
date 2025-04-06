import 'package:edu_manager/core/constans/app_svgs.dart';
import 'package:edu_manager/features/select_user_type/ui/widgets/user_type_widget.dart';
import 'package:flutter/material.dart';

class SelectUserTypeScreen extends StatefulWidget {
  const SelectUserTypeScreen({super.key});

  @override
  State<SelectUserTypeScreen> createState() => _SelectUserTypeScreenState();
}

class _SelectUserTypeScreenState extends State<SelectUserTypeScreen> {

  final List<Map<String, String>> usersType = [
    {
      "type": "teacher",
      "icon": AppSvgs.teacher,
      "title": "Teacher",
    },
    {
      "type": "student",
      "icon": AppSvgs.userGraduate,
      "title": "Student",
    },
    {
      "type": "center",
      "icon": AppSvgs.center,
      "title": "Center",
    },
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          GridView.builder(
            itemCount: usersType.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              final user = usersType[index];
              return UserTypeWidget(
                icon: user["icon"]!,
                type: user["title"]!,
              );
            },
          ),
        ],
      ),
    );
  }
}
