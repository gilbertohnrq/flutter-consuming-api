import 'package:flutter/cupertino.dart';
import 'package:flutter_app/model/add_user_dto.dart';
import 'package:flutter_app/repository/user_repository.dart';

class AddUserController {
  TextEditingController nomeController = new TextEditingController();
  TextEditingController cargoController = new TextEditingController();
  TextEditingController salarioController = new TextEditingController();

  UserRepository userRepository = new UserRepository();

  Future<void> addUser(BuildContext context) async {
    AddUserModel novoUser = new AddUserModel(
        nome: nomeController.text,
        cargo: cargoController.text,
        salario: int.parse(salarioController.text),
        sobrenome: "",
        descricaoCargo: "",
        dataDeNascimento: "");

    nomeController.clear();
    cargoController.clear();
    salarioController.clear();

    await userRepository.salvarUser(novoUser);

    Navigator.of(context).pop();
  }
}
