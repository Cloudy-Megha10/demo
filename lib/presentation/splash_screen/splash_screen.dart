import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_image_view.dart';
import 'controller/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context){
    return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700,
    body: SizedBox(
      width: double.maxFinite,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          svgPath:ImageConstant.imgInfo,
          height: getSize(78),
          width: getSize(78)
        ),
        Text("lbl_samraat_international".tr,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: AppStyle.txtAllerBold28,)
      ],),
    ),));
  }
}