import "package:klagenfurtquest_final/presentation/selectedLanguage.dart";

//Klasse für die Mehrsprachigkeit mit Methoden zum Aufrufen

class LanguageService {
  static String welcomeMessage() {
    if (selectedLanguage == "Deutsch") {
      return "Willkommen bei";
    } else {
      return "Welcome to";
    }
  }

  static String youAreText() {
    if (selectedLanguage == "Deutsch") {
      return "Du bist?";
    } else {
      return "You are?";
    }
  }

  static String helpText() {
    if (selectedLanguage == "Deutsch") {
      return "Hilfe";
    } else {
      return "Help";
    }
  }

  static String studentText() {
    if (selectedLanguage == "Deutsch") {
      return "Schüler";
    } else {
      return "Student";
    }
  }

  static String teacherText() {
    if (selectedLanguage == "Deutsch") {
      return "Lehrer";
    } else {
      return "Teacher";
    }
  }

  static String germanText() {
    if (selectedLanguage == "Deutsch") {
      return "Deutsch";
    } else {
      return "German";
    }
  }

  static String roomnumberText() {
    if (selectedLanguage == "Deutsch") {
      return "Raumnummer";
    } else {
      return "Roomnumber";
    }
  }

  static String joinText() {
    if (selectedLanguage == "Deutsch") {
      return "Beitreten";
    } else {
      return "Join";
    }
  }

  static String returnText() {
    if (selectedLanguage == "Deutsch") {
      return "Zurück";
    } else {
      return "Return";
    }
  }

  static String errorText() {
    if (selectedLanguage == "Deutsch") {
      return "Fehler";
    } else {
      return "Error";
    }
  }

  static String roomnAndnicknameText() {
    if (selectedLanguage == "Deutsch") {
      return "Bitte Raumnummer und Nickname ausfüllen!";
    } else {
      return "Please fill in roomnumber and nickname!";
    }
  }

  static String cautionText() {
    if (selectedLanguage == "Deutsch") {
      return "Achtung";
    } else {
      return "Caution";
    }
  }

  static String locationDataInUseText() {
    if (selectedLanguage == "Deutsch") {
      return "In weiterer Folge werden ihre Standortdaten verwendet.";
    } else {
      return "Your location data will be used.";
    }
  }

  static String confirmText() {
    if (selectedLanguage == "Deutsch") {
      return "Bestätigen";
    } else {
      return "Confirm";
    }
  }

  static String roomText() {
    if (selectedLanguage == "Deutsch") {
      return "Raum";
    } else {
      return "Room";
    }
  }

  static String startGameText() {
    if (selectedLanguage == "Deutsch") {
      return "Spiel starten";
    } else {
      return "Start Game";
    }
  }

  static String welcomeToStationText() {
    if (selectedLanguage == "Deutsch") {
      return "Willkommen bei der Staion!";
    } else {
      return "Welcome to the station!";
    }
  }

  static String startText() {
    if (selectedLanguage == "Deutsch") {
      return "Starten";
    } else {
      return "Start";
    }
  }

  static String schillerParkInfoText() {
    if (selectedLanguage == "Deutsch") {
      return "Der Schillerpark, eröffnet im Jahr 1905, entstand anlässlich des hundertsten Todestags des Dichters Friedrich Schillers. Ursprünglich als Stadtpark geplant, wurde er auf einem Teil des zugeschütteten Klagenfurters Stadtgrabens angelegt.\n\nBereits im Eröffnungsjahr wurde die “Schillereiche” gepflanzt und seit 1928 ziert ein Marmordenkmal den Park.";
    } else {
      return 'The Schiller Park, opened in 1905, was created to mark the centenary of the death of the poet Friedrich Schiller. Originally planned as a city park, it was laid out on part of Klagenfurts backfilled moat. \n\nThe "Schiller Oak" was planted in the year it opened and a marble monument has adorned the park since 1928.';
    }
  }

  static String startQuizText() {
    if (selectedLanguage == "Deutsch") {
      return "Quiz starten";
    } else {
      return "Start quiz";
    }
  }

  static String firstQuestionText() {
    if (selectedLanguage == "Deutsch") {
      return "Wann wurde der Schillerpark eröffnet?";
    } else {
      return "When was the Schillerpark opened?";
    }
  }

  static String secondQuestionText() {
    if (selectedLanguage == "Deutsch") {
      return "Neben dem Marmordenkmal ziert welches weitere Andenken den Park?";
    } else {
      return "In addition to the marble monument, the park is adorned with what other memorial?";
    }
  }

  static String secondQuestionFirstAnswerText() {
    if (selectedLanguage == "Deutsch") {
      return "A: Schillereiche";
    } else {
      return "A: Schiller oak";
    }
  }

  static String secondQuestionSecondAnswerText() {
    if (selectedLanguage == "Deutsch") {
      return "B: Schillerstatue";
    } else {
      return "B: Schiller statue";
    }
  }

  static String secondQuestionThirdAnswerText() {
    if (selectedLanguage == "Deutsch") {
      return "C: Schillerbrunnen";
    } else {
      return "C: Schiller fountain";
    }
  }

  static String secondQuestionFourthAnswerText() {
    if (selectedLanguage == "Deutsch") {
      return "D: Schillerbank";
    } else {
      return "D: Schiller bench";
    }
  }

  static String continueText() {
    if (selectedLanguage == "Deutsch") {
      return "Weiter";
    } else {
      return "Continue";
    }
  }

  static String answeredCorrectlyText() {
    if (selectedLanguage == "Deutsch") {
      return "Es wurden alle Fragen richtig beantwortet";
    } else {
      return "All questions were answered correctly";
    }
  }

  static String goToMapText() {
    if (selectedLanguage == "Deutsch") {
      return "Zur Map";
    } else {
      return "Back to Map";
    }
  }

  static String notAnsweredCorrectlyText() {
    if (selectedLanguage == "Deutsch") {
      return "Es wurden nicht alle Fragen richtig beantwortet";
    } else {
      return "Not all questions were answered correctly";
    }
  }

  static String tourCompletedText() {
    if (selectedLanguage == "Deutsch") {
      return "Die Tour wurde beendet, herzlichen Glückwunsch!";
    } else {
      return "The tour has been completed, congratulations";
    }
  }

  static String toResultsText() {
    if (selectedLanguage == "Deutsch") {
      return "Zu den Ergebnissen";
    } else {
      return "Go to results";
    }
  }

  static String backToQuizText() {
    if (selectedLanguage == "Deutsch") {
      return "Zurück zum Quiz";
    } else {
      return "Back to Quiz";
    }
  }

  static String resultListText() {
    if (selectedLanguage == "Deutsch") {
      return "Ergebnisliste";
    } else {
      return "Results";
    }
  }

  static String backToMenuText() {
    if (selectedLanguage == "Deutsch") {
      return "Zum Menü";
    } else {
      return "Back to menu";
    }
  }

  static String loginText() {
    if (selectedLanguage == "Deutsch") {
      return "Anmelden";
    } else {
      return "Login";
    }
  }

  static String registerText() {
    if (selectedLanguage == "Deutsch") {
      return "Registrieren";
    } else {
      return "Register";
    }
  }

  static String usernameText() {
    if (selectedLanguage == "Deutsch") {
      return "Benutzername";
    } else {
      return "Username";
    }
  }

  static String passwordText() {
    if (selectedLanguage == "Deutsch") {
      return "Passwort";
    } else {
      return "Password";
    }
  }

  static String confirmPasswordText() {
    if (selectedLanguage == "Deutsch") {
      return "Password bestätigen";
    } else {
      return "Confirm password";
    }
  }

  static String usernameEmailPasswordText() {
    if (selectedLanguage == "Deutsch") {
      return "Bitte Benutzername, E-mail und Password ausfüllen!";
    } else {
      return "Please fill in username, e-mail and password!";
    }
  }

  static String matchPasswordText() {
    if (selectedLanguage == "Deutsch") {
      return "Passwörter müssen übereinstimmen!";
    } else {
      return "Passwords must match!";
    }
  }

  static String onlyWelcomeText() {
    if (selectedLanguage == "Deutsch") {
      return "Willkommen";
    } else {
      return "Welcome";
    }
  }

  static String createRoomText() {
    if (selectedLanguage == "Deutsch") {
      return "Raum erstellen";
    } else {
      return "Create a room";
    }
  }

  static String archiveText() {
    if (selectedLanguage == "Deutsch") {
      return "Archiv";
    } else {
      return "Archive";
    }
  }

  static String loggoutText() {
    if (selectedLanguage == "Deutsch") {
      return "Ausloggen";
    } else {
      return "Logout";
    }
  }

  static String welcomeBackText() {
    if (selectedLanguage == "Deutsch") {
      return "Willkommen zurück!";
    } else {
      return "Welcome back!";
    }
  }

  static String emailPasswordText() {
    if (selectedLanguage == "Deutsch") {
      return "Bitte E-Mail und Passwort ausfüllen!";
    } else {
      return "Please fill out e-mail and password";
    }
  }

  static String parkTourText() {
    if (selectedLanguage == "Deutsch") {
      return "Entdecken Sie die grüne Vielfalt Klagenfurts auf unserer Parktour";
    } else {
      return "Discover the green diversity of Klagenfurt on our park tour";
    }
  }

  static String altstadtTourText() {
    if (selectedLanguage == "Deutsch") {
      return "Erleben Sie den Charme vergangener zeiten auf unserer Altstadttour";
    } else {
      return "Experience the charm of times gone by on our old town tour";
    }
  }

  static String quitText() {
    if (selectedLanguage == "Deutsch") {
      return "Beenden";
    } else {
      return "Quit";
    }
  }

  static String selectTourText() {
    if (selectedLanguage == "Deutsch") {
      return "Tour wählen";
    } else {
      return "Select tour";
    }
  }
}
