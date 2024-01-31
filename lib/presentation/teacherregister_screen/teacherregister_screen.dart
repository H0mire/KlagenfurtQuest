import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';
import 'package:klagenfurtquest_final/widgets/custom_text_form_field.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// ignore_for_file: must_be_immutable
class TeacherregisterScreen extends StatelessWidget {
  TeacherregisterScreen({Key? key}) : super(key: key);

  TextEditingController recBenutzerController = TextEditingController();

  TextEditingController recMailController = TextEditingController();

  TextEditingController recPasswordController = TextEditingController();

  TextEditingController recPasswordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                          height: 498.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgAppbackground,
                                height: 498.v,
                                width: 360.h,
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    width: 280.h,
                                    margin: EdgeInsets.only(top: 20.v),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Willkommen bei",
                                              style: CustomTextStyles
                                                  .displaySmallffffa500),
                                          TextSpan(
                                              text: "KlagenfurtQuest",
                                              style: CustomTextStyles
                                                  .displaySmallffffffff)
                                        ]),
                                        textAlign: TextAlign.left)))
                          ]))),
                  _buildMenu(context)
                ]))));
  }

  /// Section Widget
  Widget _buildMenu(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 15.v),
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
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child:
                      Text("Benutzername", style: theme.textTheme.titleLarge),
                ),
              ),
              SizedBox(height: 1.v),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: CustomTextFormField(
                  controller: recBenutzerController,
                  autofocus: false,
                ),
              ),
              SizedBox(height: 11.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Text("Schul Email", style: theme.textTheme.titleLarge),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: CustomTextFormField(
                  controller: recMailController,
                  autofocus: false,
                ),
              ),
              SizedBox(height: 13.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 26.h),
                  child: Text("Passwort", style: theme.textTheme.titleLarge),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: CustomTextFormField(
                  controller: recPasswordController,
                  obscureText: true,
                  autofocus: false,
                ),
              ),
              SizedBox(height: 17.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text("Passwort bestätigen",
                      style: theme.textTheme.titleLarge),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: CustomTextFormField(
                  controller: recPasswordConfirmController,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  autofocus: false,
                ),
              ),
              SizedBox(height: 26.v),
              CustomOutlinedButton(
                text: "Registrieren",
                margin: EdgeInsets.only(left: 8.h),
                onPressed: () {
                  // Überprüfe, ob eines der Felder leer ist
                  if (recBenutzerController.text.isEmpty ||
                      recMailController.text.isEmpty ||
                      recPasswordController.text.isEmpty ||
                      recPasswordConfirmController.text.isEmpty) {
                    // Zeige Popup-Fenster
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Center(
                            child: Text(
                              "Fehler",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Center(
                                child: Text(
                                  "Bitte Benutzername, Email und Password ausfüllen!",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(height: 20),
                              Center(
                                child: CustomOutlinedButton(
                                  text: "OK",
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  } else if (recPasswordController.text !=
                      recPasswordConfirmController.text) {
                    // Passwörter stimmen nicht überein, zeige Popup-Fenster
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Center(
                            child: Text(
                              "Fehler",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Center(
                                child: Text(
                                  "Passwörter müssen übereinstimmen!",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(height: 20),
                              Center(
                                child: CustomOutlinedButton(
                                  text: "OK",
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  } else {
                    // Alle Felder sind ausgefüllt und Passwörter stimmen überein, führe die Registrierung durch
                    onTapRegistrieren(context);
                  }
                },
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              )
            ])));
  }

  Future<void> onTapRegistrieren(BuildContext context) async {
    final String url = 'http://192.168.0.10:8080/signup';

    final Map<String, String> requestData = {
      'benutzer': recBenutzerController.text,
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
        //Erfolgreich registriert
        print('Erfolgreich registriert');
        Navigator.pushNamed(context, AppRoutes.teacherloggedinmenuScreen);
      } else {
        //Fehler beim Registrieren
        print('Fehler beim Registrieren: ${response.body}');
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Center(
                child: Text(
                  "Fehler",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Text(
                      "Fehler beim Registrieren",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: CustomOutlinedButton(
                      text: "OK",
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }
    } catch (error) {
      print('Fehler: $error');
    }
  }
}
