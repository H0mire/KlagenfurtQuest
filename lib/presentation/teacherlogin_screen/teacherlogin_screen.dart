import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';
import 'package:klagenfurtquest_final/widgets/custom_text_form_field.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TeacherloginScreen extends StatelessWidget {
  TeacherloginScreen({Key? key}) : super(key: key);

  TextEditingController recMailController = TextEditingController();
  TextEditingController recPasswordController = TextEditingController();

  FocusNode recMailFocus = FocusNode();
  FocusNode recPasswordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 498.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgAppbackground,
                        height: 498.v,
                        width: 360.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 280.h,
                          margin: EdgeInsets.only(top: 20.v),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Willkommen bei",
                                  style: CustomTextStyles.displaySmallffffa500,
                                ),
                                TextSpan(
                                  text: "KlagenfurtQuest",
                                  style: CustomTextStyles.displaySmallffffffff,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildTeacherLoginMenu(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTeacherLoginMenu(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusStyle.customBorderTL25,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 215.h,
              child: Text(
                "Willkommen zurück!",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.displaySmallSemiBold,
              ),
            ),
            SizedBox(height: 18.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Text(
                  "Schul E-Mail",
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: CustomTextFormField(
                controller: recMailController,
                focusNode: recMailFocus,
                autofocus: false,
                onEditingComplete: () {
                  FocusScope.of(context).requestFocus(recPasswordFocus);
                },
              ),
            ),
            SizedBox(height: 15.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text(
                  "Passwort",
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: CustomTextFormField(
                controller: recPasswordController,
                focusNode: recPasswordFocus,
                textInputAction: TextInputAction.done,
                obscureText: true,
                autofocus: false,
                onEditingComplete: () {
                  onTapAnmelden(context);
                },
              ),
            ),
            SizedBox(height: 26.v),
            CustomOutlinedButton(
              text: "Anmelden",
              margin: EdgeInsets.only(left: 8.h),
              onPressed: () {
                onTapAnmelden(context);
              },
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            SizedBox(height: 12.v),
            Text("Hilfe", style: theme.textTheme.titleLarge),
            SizedBox(height: 9.v),
          ],
        ),
      ),
    );
  }

  Future<void> onTapAnmelden(BuildContext context) async {
    final String url = 'http://192.168.0.10:8080/login';

    final Map<String, String> requestData = {
      'mail': recMailController.text,
      'password': recPasswordController.text,
    };

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(requestData),
      );

      if (response.statusCode == 200) {
        // Erfolgreich eingeloggt
        print('Erfolgreich eingeloggt');

        Navigator.pushNamed(context, AppRoutes.teacherloggedinmenuScreen);
      } else {
        // Fehler beim Einloggen
        print('Fehler beim Einloggen: ${response.body}');
        // Hier können Sie die Aktionen nach einem erfolglosen Login durchführen
      }
    } catch (error) {
      print('Fehler: $error');
    }
  }
}
