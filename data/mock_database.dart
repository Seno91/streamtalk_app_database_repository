import '../models/movies.dart';
import '../models/user.dart';
import 'database_repository.dart';

class MockDatabase implements DatabaseRepository {
  List<User> users = [];
  List<Movie> movies = [
    Movie(
      titleName: "John Wick",
      category: "Action",
      cast: "Keanu Reeves",
      productionYear: 2020,
    ),
    Movie(
      titleName: "John Wick 2",
      category: "Action",
      cast: "Keanu Reeves",
      productionYear: 2022,
    ),
  ];

  @override
  void addRecommendation(
      String titleName, String category, String cast, int productionYear) {
    Movie currentMovie = Movie(
        titleName: titleName,
        category: category,
        cast: cast,
        productionYear: productionYear);
    movies.add(currentMovie);
  }

  @override
  void deleteAccount(String name, String password, String email) {
    for (User user in users) {
      if (user.name == name &&
          user.password == password &&
          user.email == email) {
        users.remove(user);
        break;
      }
    }
  }

  @override
  List<User> getAllUsers() {
    return users;
  }

  @override
  List<Movie> getRecommendations() {
    return movies;
  }

  @override
  void registrateNewUser(String name, String password, String email) {
    User currentUser = User(name: name, password: password, email: email);
    users.add(currentUser);
  }
}
