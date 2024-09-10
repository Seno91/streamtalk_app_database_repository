import 'dart:io';

import 'models/user.dart';

void main() {
  print("Welcome to StreamTalk!");
  bool isProgramRunning = true;

  List<User> users = [];
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
        users.add(User(
            name: userNameAfterSignUp,
            password: userPasswordAfterSignUp,
            email: userEmailAfterSignUp));
        print("Succesfully created an Account! now LogIn and Enjoy!");
      case "l" || "L":
        isProgramRunning = true;
        stdout.write("Enter Username: ");

        String userNameInput = stdin.readLineSync()!;
        stdout.write("Enter Password: ");

        String userPasswordInput = stdin.readLineSync()!;
        bool logInCorrect = false;
        for (User currentUser in users) {
          if (userNameInput == currentUser.name &&
              userPasswordInput == currentUser.password) {
            logInCorrect = true;
            break;
          }
        }
        if (logInCorrect) {
          print("Succesfully LoggedIn!");
        } else {
          print("Username or Password incorrect. Try again!");
        }
    }
  }
}
