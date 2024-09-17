import '../models/movies.dart';
import '../models/user.dart';

abstract class DatabaseRepository {
  List<User> getAllUsers();

  void addUser(User user);

  void deleteUser(User user);

  List<Movie> getRecommendations();

  void addRecommendation(Movie movie);
}
