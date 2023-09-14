import 'package:act_hub_training1/core/widgets/will_pop_scope.dart';
import 'package:act_hub_training1/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/constants.dart';
import '../resources/manager_assets.dart';
import '../resources/manager_colors.dart';

Widget scaffoldWithBackGroundImage({
  required Widget child,
  Color backgroundColor = ManagerColors.primaryColor,
  String image = ManagerAssets.background,
  bool isRegisterView = false,
}) {
  return willPopScope(
    child: Scaffold(
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: ManagerColors.transparent,
        elevation: Constants.elevationAppBar,
        leading: isRegisterView
            ? IconButton(
                onPressed: () {
                  Get.offAllNamed(Routes.loginView);
                },
                icon: const Icon(
                  Icons.arrow_back_outlined,
                  color: ManagerColors.white,
                ),
              )
            : Container(),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: child,
      ),
    ),
  );
}