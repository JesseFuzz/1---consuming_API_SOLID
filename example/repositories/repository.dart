import '../models/flutterando_model.dart';

abstract class FetchUserRepository {
  Future<FlutterandoUser> fetchUser();
}
