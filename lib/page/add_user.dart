import 'package:flutter/material.dart';
import 'package:flutter_app/controller/add_user_controller.dart';

class AddUser extends StatelessWidget {
  AddUserController userController = new AddUserController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar um novo funcionário"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          TextField(
            autofocus: true,
            controller: userController.nomeController,
            decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.person),
                hintText: 'Nome'),
          ),
          TextField(
            autofocus: true,
            controller: userController.cargoController,
            decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.work),
                hintText: 'Cargo'),
          ),
          TextField(
            autofocus: true,
            controller: userController.salarioController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.monetization_on),
                hintText: 'Salario'),
          ),
          RaisedButton(
            onPressed: () async {
              await userController.addUser(context);
            },
            child: Text("Salvar"),

          ),
        ],
      ),
    );
  }
}
