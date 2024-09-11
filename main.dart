import 'dart:io';

import 'data/database_repository.dart';
import 'data/mock_database.dart';
import 'models/user.dart';

void main() {
  DatabaseRepository mockDatabase = MockDatabase();

  print("Welcome to StreamTalk!");
  print("For Movie lovers :)");
  bool isProgramRunning = true;

  while (isProgramRunning) {
    print("(S)ign up or (L)ogIn!");
    String userChoiceInput = stdin.readLineSync()!;
    switch (userChoiceInput) {
      case "s" || "S":
        String userNameAfterSignUp = "";
        String userPasswordAfterSignUp = "";
        String userEmailAfterSignUp = "";
        isProgramRunning = true;
        stdout.write("Create Username: ");
        userNameAfterSignUp = stdin.readLineSync()!;
        stdout.write("Create Password: ");
        userPasswordAfterSignUp = stdin.readLineSync()!;
        stdout.write("E-mail: ");
        userEmailAfterSignUp = stdin.readLineSync()!;
        mockDatabase.registrateNewUser(
            userNameAfterSignUp, userPasswordAfterSignUp, userEmailAfterSignUp);

        print("Succesfully created an Account! now LogIn and Enjoy!");
      case "l" || "L":
        isProgramRunning = true;
        stdout.write("Enter Username: ");

        String userNameInput = stdin.readLineSync()!;
        stdout.write("Enter Password: ");

        String userPasswordInput = stdin.readLineSync()!;
        bool logInCorrect = false;
        for (User currentUser in mockDatabase.getAllUsers()) {
          if (userNameInput == currentUser.name &&
              userPasswordInput == currentUser.password) {
            logInCorrect = true;
            break;
          }
        }
        if (logInCorrect) {
          print("Succesfully LoggedIn!");
          for (var movie in mockDatabase.getRecommendations()) {
            print(movie);
          }
        } else {
          print("Username or Password incorrect. Try again!");
        }
    }
  }
}
