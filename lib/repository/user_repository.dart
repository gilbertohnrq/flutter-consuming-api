import 'package:dio/dio.dart';
import 'package:flutter_app/model/add_user_dto.dart';
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

  Future<UserModel> salvarUser(AddUserModel user) async {
    try {
      const url = "http://192.168.1.2:3334/funcionarios";
      Response response = await dio.post(url, data: user);
      return UserModel.fromJson(response.data);
    } catch (e) {
      return new UserModel();
    }
  }

  Future deleteUser(UserModel user) async{
    try{
      final url = "http://192.168.1.2:3334/funcionarios/${user.id}";
      Response response = await dio.delete(url);
    }
    catch(e){
      throw new Exception(e.toString());
    }
  }
}
