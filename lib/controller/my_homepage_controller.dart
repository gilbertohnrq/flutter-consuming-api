import 'package:flutter_app/model/user_model.dart';
import 'package:flutter_app/repository/user_repository.dart';

class MyHomePageController {
  UserRepository userRepository = new UserRepository();

  Future<List<UserModel>> listarTodos() async {
    return userRepository.listarTodos();
  }
}
