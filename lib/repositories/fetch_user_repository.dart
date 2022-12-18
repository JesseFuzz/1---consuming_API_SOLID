import '../models/github_model.dart';
import '../services/http_service.dart';
import 'repository.dart';

class FetchUserRepositoryImpl extends FetchUserRepository {
  final IHttpService _httpService;

  FetchUserRepositoryImpl({required IHttpService httpService})
      : _httpService = httpService;

  @override
  Future<GitHubUserModel> fetchUser() async {
    final response =
        await _httpService.get('https://api.github.com/users/Flutterando');

    var flutterandoUser = GitHubUserModel.fromJson(json: response.data);
    return flutterandoUser;
  }
}
