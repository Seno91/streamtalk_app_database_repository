import '../models/movies.dart';
import '../models/user.dart';

abstract class DatabaseRepository {
  List<User> getAllUsers();

  void registrateNewUser(String name, String password, String email);

  void deleteAccount(String name, String password, String email);

  List<Movie> getRecommendations();

  void addRecommendation(
      String titleName, String category, String cast, int productionYear);
}
