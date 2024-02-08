import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/presentation/mainmenu_screen/mainmenu_screen.dart';
import 'package:klagenfurtquest_final/presentation/language_config/mainmenulanguageconfig_screen.dart';
import 'package:klagenfurtquest_final/presentation/tourist_menu/tourist_menu.dart';
import 'package:klagenfurtquest_final/presentation/teacher_archive/teacher_archive.dart';
import 'package:klagenfurtquest_final/presentation/teacher_register/teacher_register.dart';
import 'package:klagenfurtquest_final/presentation/roomview_for_teacher/roomview_for_teacher.dart';
import 'package:klagenfurtquest_final/presentation/tourist_tour_completed/tourist_tour_completed.dart';
import 'package:klagenfurtquest_final/presentation/student_station_failed/student_station_failed.dart';
import 'package:klagenfurtquest_final/presentation/teacher_logged_in/teacher_logged_in.dart';
import 'package:klagenfurtquest_final/presentation/student_spielansicht/student_spielansicht.dart';
import 'package:klagenfurtquest_final/presentation/tourist_station_finished/tourist_station_finished.dart';
import 'package:klagenfurtquest_final/presentation/teacher_spectate_students/teacher_spectate_students.dart';
import 'package:klagenfurtquest_final/presentation/student_tour_completed/student_tour_completed.dart';
import 'package:klagenfurtquest_final/presentation/teacher_menu/teacher_menu.dart';
import 'package:klagenfurtquest_final/presentation/roomview_for_student/roomview_for_student.dart';
import 'package:klagenfurtquest_final/presentation/teacher_login/teacher_login.dart';
import 'package:klagenfurtquest_final/presentation/tourist_select_tour/touristselecttour_screen.dart';
import 'package:klagenfurtquest_final/presentation/teacher_select_tour/teacher_select_tour.dart';
import 'package:klagenfurtquest_final/presentation/studentlocationview_screen/studentlocationview_screen.dart';
import 'package:klagenfurtquest_final/presentation/tourist_station_failed/tourist_station_failed.dart';
import 'package:klagenfurtquest_final/presentation/student_resultlist/student_resultlist.dart';
import 'package:klagenfurtquest_final/presentation/student_station_finished/student_station_finished.dart';
import 'package:klagenfurtquest_final/presentation/tourist_spielansicht/tourist_spielansicht.dart';
import 'package:klagenfurtquest_final/presentation/student_station_infos/student_station_infos.dart';
import 'package:klagenfurtquest_final/presentation/tourist_station_infos/tourist_station_infos.dart';
import 'package:klagenfurtquest_final/presentation/student_enter_room/student_enter_room.dart';
import 'package:klagenfurtquest_final/presentation/student_station_quiz/student_station_quiz.dart';
import 'package:klagenfurtquest_final/presentation/tourist_station_quiz/tourist_station_quiz.dart';
import 'package:klagenfurtquest_final/presentation/app_navigation/app_navigation_screen.dart';

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
  };
}
