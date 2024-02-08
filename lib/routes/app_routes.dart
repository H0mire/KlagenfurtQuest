import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/presentation/mainmenu_screen/mainmenu_screen.dart';
import 'package:klagenfurtquest_final/presentation/language_config/mainmenulanguageconfig_screen.dart';
import 'package:klagenfurtquest_final/presentation/touristmenu_screen/touristmenu_screen.dart';
import 'package:klagenfurtquest_final/presentation/teacherarchive_screen/teacherarchive_screen.dart';
import 'package:klagenfurtquest_final/presentation/teacherregister_screen/teacherregister_screen.dart';
import 'package:klagenfurtquest_final/presentation/roomviewteacher_screen/roomviewteacher_screen.dart';
import 'package:klagenfurtquest_final/presentation/spielansicht_quiz_geschafft_screen/spielansicht_quiz_geschafft_screen.dart';
import 'package:klagenfurtquest_final/presentation/spielansicht_quiz_failed_screen/spielansicht_quiz_failed_screen.dart';
import 'package:klagenfurtquest_final/presentation/teacherloggedinmenu_screen/teacherloggedinmenu_screen.dart';
import 'package:klagenfurtquest_final/presentation/spielansicht_screen/spielansicht_screen.dart';
import 'package:klagenfurtquest_final/presentation/spielansicht_quiz_finished_screen/spielansicht_quiz_finished_screen.dart';
import 'package:klagenfurtquest_final/presentation/monitoringview_screen/monitoringview_screen.dart';
import 'package:klagenfurtquest_final/presentation/spielansicht_station_quiz_screen/spielansicht_station_quiz_screen.dart';
import 'package:klagenfurtquest_final/presentation/spielansicht_quiz_geschafft_three_screen/spielansicht_quiz_geschafft_three_screen.dart';
import 'package:klagenfurtquest_final/presentation/teachermenu_screen/teachermenu_screen.dart';
import 'package:klagenfurtquest_final/presentation/roomviewstudent_screen/roomviewstudent_screen.dart';
import 'package:klagenfurtquest_final/presentation/teacherlogin_screen/teacherlogin_screen.dart';
import 'package:klagenfurtquest_final/presentation/touristselecttour_screen/touristselecttour_screen.dart';
import 'package:klagenfurtquest_final/presentation/teacherselecttour_screen/teacherselecttour_screen.dart';
import 'package:klagenfurtquest_final/presentation/studentlocationview_screen/studentlocationview_screen.dart';
import 'package:klagenfurtquest_final/presentation/quiz_failed_screen/quiz_failed_screen.dart';
import 'package:klagenfurtquest_final/presentation/raumansicht_schueler_screen/raumansicht_schueler_screen.dart';
import 'package:klagenfurtquest_final/presentation/spielansicht_quiz_beendet_screen/spielansicht_quiz_beendet_screen.dart';
import 'package:klagenfurtquest_final/presentation/spielansicht_three_screen/spielansicht_three_screen.dart';
import 'package:klagenfurtquest_final/presentation/spielansicht_station_infos_screen/spielansicht_station_infos_screen.dart';
import 'package:klagenfurtquest_final/presentation/spielansicht_station_infos_one_screen/spielansicht_station_infos_one_screen.dart';
import 'package:klagenfurtquest_final/presentation/studentmenu_screen/studentmenu_screen.dart';
import 'package:klagenfurtquest_final/presentation/spielansicht_station_quiz_one_screen/spielansicht_station_quiz_one_screen.dart';
import 'package:klagenfurtquest_final/presentation/spielansicht_station_quiz_two_screen/spielansicht_station_quiz_two_screen.dart';
import 'package:klagenfurtquest_final/presentation/app_navigation/app_navigation_screen.dart';
import 'package:klagenfurtquest_final/presentation/spielansicht_station_starten_dialog/spielansicht_station_starten_dialog.dart';
import 'package:klagenfurtquest_final/presentation/spielansicht_station_starting_dialog/spielansicht_station_starting_dialog.dart';

class AppRoutes {
  static const String mainmenuScreen = '/mainmenu_screen';

  static const String mainmenulanguageconfigScreen =
      '/mainmenulanguageconfig_screen';

  static const String touristmenuScreen = '/touristmenu_screen';

  static const String teacherarchiveScreen = '/teacherarchive_screen';

  static const String teacherregisterScreen = '/teacherregister_screen';

  static const String roomviewteacherScreen = '/roomviewteacher_screen';

  static const String spielansichtQuizGeschafftScreen =
      '/spielansicht_quiz_geschafft_screen';

  static const String spielansichtQuizFailedScreen =
      '/spielansicht_quiz_failed_screen';

  static const String teacherloggedinmenuScreen = '/teacherloggedinmenu_screen';

  static const String spielansichtScreen = '/spielansicht_screen';

  static const String spielansichtQuizFinishedScreen =
      '/spielansicht_quiz_finished_screen';

  static const String monitoringviewScreen = '/monitoringview_screen';

  static const String spielansichtStationQuizScreen =
      '/spielansicht_station_quiz_screen';

  static const String spielansichtQuizGeschafftThreeScreen =
      '/spielansicht_quiz_geschafft_three_screen';

  static const String teachermenuScreen = '/teachermenu_screen';

  static const String roomviewstudentScreen = '/roomviewstudent_screen';

  static const String teacherloginScreen = '/teacherlogin_screen';

  static const String touristselecttourScreen = '/touristselecttour_screen';

  static const String teacherselecttourScreen = '/teacherselecttour_screen';

  static const String studentlocationviewScreen = '/studentlocationview_screen';

  static const String quizFailedScreen = '/quiz_failed_screen';

  static const String raumansichtSchuelerScreen =
      '/raumansicht_schueler_screen';

  static const String spielansichtQuizBeendetScreen =
      '/spielansicht_quiz_beendet_screen';

  static const String spielansichtThreeScreen = '/spielansicht_three_screen';

  static const String spielansichtStationInfosScreen =
      '/spielansicht_station_infos_screen';

  static const String spielansichtStationInfosOneScreen =
      '/spielansicht_station_infos_one_screen';

  static const String studentmenuScreen = '/studentmenu_screen';

  static const String spielansichtStationQuizOneScreen =
      '/spielansicht_station_quiz_one_screen';

  static const String spielansichtStationQuizTwoScreen =
      '/spielansicht_station_quiz_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String spielansichtStationStarten =
      '/spielansicht_station_starten_dialog';

  static const String spielansichtStationStarting =
      '/spielansicht_station_starting_dialog';

  static Map<String, WidgetBuilder> routes = {
    mainmenuScreen: (context) => MainmenuScreen(),
    mainmenulanguageconfigScreen: (context) => MainmenulanguageconfigScreen(),
    touristmenuScreen: (context) => TouristmenuScreen(),
    teacherarchiveScreen: (context) => TeacherarchiveScreen(),
    teacherregisterScreen: (context) => TeacherregisterScreen(),
    roomviewteacherScreen: (context) => RoomviewteacherScreen(),
    spielansichtQuizGeschafftScreen: (context) =>
        SpielansichtQuizGeschafftScreen(),
    spielansichtQuizFailedScreen: (context) => SpielansichtQuizFailedScreen(),
    teacherloggedinmenuScreen: (context) => TeacherloggedinmenuScreen(),
    spielansichtScreen: (context) => SpielansichtScreen(),
    spielansichtQuizFinishedScreen: (context) =>
        SpielansichtQuizFinishedScreen(),
    monitoringviewScreen: (context) => MonitoringviewScreen(),
    spielansichtStationQuizScreen: (context) => SpielansichtStationQuizScreen(),
    spielansichtQuizGeschafftThreeScreen: (context) =>
        SpielansichtQuizGeschafftThreeScreen(),
    teachermenuScreen: (context) => TeachermenuScreen(),
    roomviewstudentScreen: (context) => RoomviewstudentScreen(),
    teacherloginScreen: (context) => TeacherloginScreen(),
    touristselecttourScreen: (context) => TouristselecttourScreen(),
    teacherselecttourScreen: (context) => TeacherselecttourScreen(),
    studentlocationviewScreen: (context) => StudentlocationviewScreen(),
    quizFailedScreen: (context) => QuizFailedScreen(),
    raumansichtSchuelerScreen: (context) => RaumansichtSchuelerScreen(),
    spielansichtQuizBeendetScreen: (context) => SpielansichtQuizBeendetScreen(),
    spielansichtThreeScreen: (context) => SpielansichtThreeScreen(),
    spielansichtStationInfosScreen: (context) =>
        SpielansichtStationInfosScreen(),
    spielansichtStationInfosOneScreen: (context) =>
        SpielansichtStationInfosOneScreen(),
    studentmenuScreen: (context) => StudentmenuScreen(),
    spielansichtStationQuizOneScreen: (context) =>
        SpielansichtStationQuizOneScreen(),
    spielansichtStationQuizTwoScreen: (context) =>
        SpielansichtStationQuizTwoScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    spielansichtStationStarten: (context) => SpielansichtStationStartenDialog(),
    spielansichtStationStarting: (context) =>
        SpielansichtStationStartingDialog()
  };
}
