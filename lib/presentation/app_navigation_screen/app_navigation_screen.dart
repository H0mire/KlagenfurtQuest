import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "MainMenu",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mainmenuScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "MainMenuLanguageConfig",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mainmenulanguageconfigScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "TouristMenu",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.touristmenuScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "TeacherArchive",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.teacherarchiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "TeacherRegister",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.teacherregisterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "RoomViewTeacher",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.roomviewteacherScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Spielansicht Quiz geschafft",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.spielansichtQuizGeschafftScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Spielansicht Quiz_failed",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.spielansichtQuizFailedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "TeacherLoggedInMenu",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.teacherloggedinmenuScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Spielansicht",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.spielansichtScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Spielansicht_Quiz_finished",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.spielansichtQuizFinishedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "MonitoringView",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.monitoringviewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Spielansicht Station Quiz",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.spielansichtStationQuizScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Spielansicht Quiz geschafft Three",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.spielansichtQuizGeschafftThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "TeacherMenu",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.teachermenuScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "RoomViewStudent",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.roomviewstudentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "TeacherLogin",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.teacherloginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "TouristSelectTour",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.touristselecttourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "TeacherSelectTour",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.teacherselecttourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "StudentLocationView",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.studentlocationviewScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Quiz_failed",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.quizFailedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Raumansicht Schueler",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.raumansichtSchuelerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Spielansicht Quiz beendet",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.spielansichtQuizBeendetScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Spielansicht Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.spielansichtThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Spielansicht Station Infos",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.spielansichtStationInfosScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Spielansicht Station Infos One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.spielansichtStationInfosOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "StudentMenu",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.studentmenuScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Spielansicht Station Quiz One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.spielansichtStationQuizOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Spielansicht Station Quiz Two",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.spielansichtStationQuizTwoScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
