import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/presentation/LanguageService.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';
import 'package:klagenfurtquest_final/widgets/custom_text_form_field.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// ignore_for_file: must_be_immutable
class StudentmenuScreen extends StatelessWidget {
  StudentmenuScreen({Key? key}) : super(key: key);

//Controller für Raumnummer
  TextEditingController recRoomNumberController = TextEditingController();
//Controller für Nickname
  TextEditingController recNicknameController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final FocusNode roomNumberFocus = FocusNode();
  final FocusNode nameFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
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
                                                    imagePath: ImageConstant
                                                        .imgAppbackground,
                                                    height: 498.v,
                                                    width: 360.h,
                                                    alignment:
                                                        Alignment.center),
                                                Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Container(
                                                    width: 280.h,
                                                    margin: EdgeInsets.only(
                                                        top: 22.v),
                                                    decoration: AppDecoration
                                                        .outlineBlack,
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: LanguageService
                                                                .welcomeMessage(),
                                                            style: CustomTextStyles
                                                                .displaySmallffffa500,
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                "\nKlagenfurtQuest",
                                                            style: CustomTextStyles
                                                                .displaySmallffffffff,
                                                          ),
                                                        ],
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              ]))),
                                  _buildStudentMenu(context)
                                ])))))));
  }

  //Widget für das Erstellen des Menüs
  Widget _buildStudentMenu(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 25.v),
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
          Text(LanguageService.studentText(),
              style: CustomTextStyles.displaySmallBold),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(roomNumberFocus);
              },
              child: Center(
                child: CustomTextFormField(
                  controller: recRoomNumberController,
                  hintText: LanguageService.roomnumberText(),
                  focusNode: roomNumberFocus,
                  autofocus: false,
                ),
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(nameFocus);
              },
              child: Center(
                child: CustomTextFormField(
                  controller: recNicknameController,
                  hintText: "Nickname",
                  textInputAction: TextInputAction.done,
                  focusNode: nameFocus,
                  autofocus: false,
                ),
              ),
            ),
          ),
          SizedBox(height: 13.v),
          CustomOutlinedButton(
            text: LanguageService.joinText(),
            margin: EdgeInsets.only(left: 8.h),
            onPressed: () {
              if (recRoomNumberController.text.isNotEmpty &&
                  recNicknameController.text.isNotEmpty) {
                onTapBeitreten(context);
              } else {
                // Zeigt das Popup-Fenster, wenn eines der Textfelder leer ist
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Center(
                        child: Text(
                          LanguageService.cautionText(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: Text(
                              LanguageService.roomnAndnicknameText(),
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
            },
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          SizedBox(height: 15.v),
          CustomOutlinedButton(
            text: LanguageService.returnText(),
            margin: EdgeInsets.only(left: 8.h),
            buttonStyle: CustomButtonStyles.outlinePrimaryTL20,
            buttonTextStyle: theme.textTheme.displaySmall!,
            onPressed: () {
              onTapZurck(context);
            },
          ),
          SizedBox(height: 31.v),
          Text(LanguageService.helpText(), style: theme.textTheme.titleLarge),
        ]),
      ),
    );
  }

  //Methode für den Beitreten-Button
  Future<void> onTapBeitreten(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      await showDialog(
        context: context,
        builder: (BuildContext context) {
          return Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: AlertDialog(
                title: Center(
                  child: Text(
                    LanguageService.cautionText(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Text(
                        LanguageService.locationDataInUseText(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 20),
                    CustomOutlinedButton(
                      text: LanguageService.confirmText(),
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.pushNamed(
                            context, AppRoutes.roomviewstudentScreen);
                        //onTapRaumBetreten(context);
                      },
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    }
  }

  //Navigator zum Startmenü
  onTapZurck(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainmenuScreen);
  }

//Methode zum Raumbeitreten, um mit Backend zu kommunizieren + Fehler-PopUp
  Future<void> onTapRaumBetreten(BuildContext context) async {
    final String url = 'http://192.168.0.10:8080/rooms';

    final Map<String, String> requestData = {
      'roomnr': recRoomNumberController.text,
      'nickname': recNicknameController.text,
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
        Navigator.pushNamed(context, AppRoutes.roomviewstudentScreen);
      } else {
        // Fehler beim Einloggen
        print('Fehler beim Einloggen: ${response.body}');
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
                      "Fehler beim Beitreten",
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
