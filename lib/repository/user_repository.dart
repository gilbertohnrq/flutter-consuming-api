import 'package:dio/dio.dart';
import 'package:flutter_app/model/user_model.dart';

class UserRepository {
  Dio dio = new Dio();

  Future<List<UserModel>> listarTodos() async {
    try {
      const url = "http://192.168.1.2:3334/funcionarios";
      Response response = await dio.get(url);
      return (response.data as List)
          .map((item) => UserModel.fromJson(item))
          .toList();
    } catch (e) {
      return new List<UserModel>();
    }
  }
}
