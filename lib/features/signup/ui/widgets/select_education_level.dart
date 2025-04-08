import 'package:edu_manager/core/global%20widgets/app_text_form_field.dart';
import 'package:edu_manager/features/signup/data/logic/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectEducationLevel extends StatefulWidget {
  const SelectEducationLevel({super.key});

  @override
  State<SelectEducationLevel> createState() => _SelectEducationLevelState();
}

class _SelectEducationLevelState extends State<SelectEducationLevel> {
  
  final List<String> educationalStages = [
    'المرحلة الإبتدائية',
    'المرحلة الإعدادية',
    'المرحلة الثانوية',
  ];

  final Map<String, List<String>> educationalLevels = {
    'المرحلة الإبتدائية': [
      'الصف الأول الإبتدائي',
      'الصف الثاني الإبتدائي',
      'الصف الثالث الإبتدائي',
      'الصف الرابع الإبتدائي',
      'الصف الخامس الإبتدائي',
      'الصف السادس الإبتدائي',
    ],
    'المرحلة الإعدادية': [
      'الصف الأول الإعدادي',
      'الصف الثاني الإعدادي',
      'الصف الثالث الإعدادي',
    ],
    'المرحلة الثانوية': [
      'الصف الأول الثانوي',
      'الصف الثاني الثانوي',
      'الصف الثالث الثانوي',
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: DropdownButtonFormField<String>(
            value: context.read<SignUpCubit>().educationLevel,
            decoration: InputDecoration(
              labelText: 'اختر المرحلة التعليمية',
              border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r)),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
            ),
            items: educationalStages.map((stage) {
              return DropdownMenuItem<String>(
                value: stage,
                child: Text(stage),
              );
            }).toList(),
            onChanged: (value) {
              context.read<SignUpCubit>().educationLevel = value!;
              setState(() {});
            },
          ),
        ),
        if (context.read<SignUpCubit>().educationLevel != null)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: DropdownButtonFormField<String>(
              value: context.read<SignUpCubit>().educationGrade,
              decoration: InputDecoration(
                labelText: 'اختر الصف الدراسي',
                border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r)),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
              ),
              items: educationalLevels[
                      context.read<SignUpCubit>().educationLevel!]!
                  .map((grade) => DropdownMenuItem<String>(
                        value: grade,
                        child: Text(grade),
                      ))
                  .toList(),
              onChanged: (value) {
                context.read<SignUpCubit>().educationGrade = value!;

                setState(() {});
              },
            ),
          ),
      ],
    );
  }
}
