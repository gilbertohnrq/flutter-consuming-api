import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/controller/add_user_controller.dart';
import 'package:flutter_app/model/user_model.dart';

class UserDetails extends StatelessWidget {
  final UserModel user;

  const UserDetails({this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes do ${user.nome}"),
        backgroundColor: Colors.deepPurple,
      ),
      body: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Nome',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Cargo',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'Salário',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: [
          DataRow(
            cells: <DataCell>[
              DataCell(Text(user.nome)),
              DataCell(Text(user.cargo)),
              DataCell(
                Text("${user.salario}"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
