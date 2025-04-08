// ignore_for_file: deprecated_member_use

import 'package:edu_manager/core/constans/app_images.dart';
import 'package:edu_manager/core/global%20widgets/app_button.dart';
import 'package:edu_manager/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:edu_manager/core/global%20widgets/app_loading.dart';
import 'package:edu_manager/core/helpers/show_snack_bar.dart';
import 'package:edu_manager/core/theming/colors.dart';
import 'package:geolocator/geolocator.dart';

import '../../../../core/constans/app_svgs.dart';
import '../../../../core/global widgets/app_text_form_field.dart';
import '../../../../generated/l10n.dart';
import '../../data/logic/cubit/get_address_cubit.dart';
import '../../data/logic/cubit/sign_up_cubit.dart';
import 'sign_up_text_field.dart';

class GetAddressTextFieldWidget extends StatefulWidget {
  const GetAddressTextFieldWidget({super.key});
  @override
  State<GetAddressTextFieldWidget> createState() =>
      _GetAddressTextFieldWidgetState();
}

class _GetAddressTextFieldWidgetState extends State<GetAddressTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<GetAddressCubit, GetAddressState>(
      listener: (context, state) {
        state.whenOrNull(success: () {
          context.read<SignUpCubit>().addressController.text =
              context.read<GetAddressCubit>().adressController.text;
        }, failure: () {
          showDialog(
            context: context,
            builder: (context) => Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(31)),
                child: Container(
                  height: 200.h,
                  width: 200.w,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                    child: Column(
                      children: [
                        Icon(
                          Icons.info_sharp,
                          color: Colors.red,
                          size: 60,
                        ),
                        verticalSpace(10),
                        Text('حصلت مشكلة في كتابة العنوان تلقائي'),
                        verticalSpace(10),
                        AppGradientButton(
                          size: Size(100.w, 40.h),
                          text: 'إعادة المحاولة',
                          onPressed: () async {
                            LocationPermission permission =
                                await Geolocator.checkPermission();

                            if (permission == LocationPermission.denied ||
                                permission ==
                                    LocationPermission.deniedForever) {
                              permission = await Geolocator.requestPermission();
                            }

                            if (permission == LocationPermission.always ||
                                permission == LocationPermission.whileInUse) {
                              // ابدأ هنا تجيب اللوكيشن من جديد
                              Position position =
                                  await Geolocator.getCurrentPosition(
                                      desiredAccuracy: LocationAccuracy.high);
                              print(
                                  'خط العرض: ${position.latitude}, خط الطول: ${position.longitude}');
                            } else {
                              // لسه مفيش صلاحية، ممكن تظهر مسج
                              print('مفيش صلاحية للوصول للموقع');
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                )),
          );
        });
      },
      child: SignUpTextField(
        iconPath: AppSvgs.marker,
        appTextFormField: AppTextFormField(
          controller: context.read<GetAddressCubit>().adressController,
          hintText: S.of(context).address,
          onChanged: (data) {
            context.read<SignUpCubit>().addressController.text = data;
          },
          suffixIcon: BlocBuilder<GetAddressCubit, GetAddressState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return IconButton(
                    onPressed: () {
                      context.read<GetAddressCubit>().emitGetAdressStates();
                    },
                    icon: SvgPicture.asset(
                      AppSvgs.navigation,
                      color: ColorsManager.mainBlue,
                    ),
                  );
                },
                loading: () {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 10.w,
                      height: 10.h,
                      child: const AppLoading(),
                    ),
                  );
                },
              );
            },
          ),
          keyboardType: TextInputType.text,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.of(context).erordata;
            } else {
              return null;
            }
          },
        ),
      ),
    );
  }
}
