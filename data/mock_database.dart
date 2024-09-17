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
  void addRecommendation(Movie movie) {
    Movie currentMovie = movie;
    movies.add(currentMovie);
  }

  @override
  void deleteUser(User user) {
    for (User userInList in users) {
      if (user.name == userInList.name &&
          user.password == userInList.password &&
          user.email == userInList.email) {
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
  void addUser(User user) {
    users.add(user);
  }
}
