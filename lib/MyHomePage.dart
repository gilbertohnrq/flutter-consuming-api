import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/controller/my_homepage_controller.dart';
import 'package:flutter_app/model/user_model.dart';
import 'package:flutter_app/page/user_details.dart';
import 'package:flutter_app/repository/user_repository.dart';

class MyHomePage extends StatefulWidget {
  final String text;

  MyHomePage({this.text});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool icone = false;
  MyHomePageController controller = new MyHomePageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.text),
        centerTitle: true,
        actions: [],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://image.freepik.com/fotos-gratis/paisagem-da-ponte-arborizada-no-porto-entre-o-por-do-sol_38927-17.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              accountName: Text("Gilberto Henrique"),
              accountEmail: Text("gilbertohnrq@gmail.com"),
              currentAccountPicture: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(
                    "https://avatars0.githubusercontent.com/u/29513598?v=4"),
                backgroundColor: Colors.transparent,
              ),
            ),
            ListTile(
              leading: Icon(Icons.library_music),
              title: Text("Music"),
            ),
            ListTile(
              leading: Icon(Icons.movie),
              title: Text("Movies"),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Shopping"),
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text("Apps"),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text("Docs"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
            ),
            ListTile(
              leading: Icon(Icons.power_settings_new),
              title: Text("Logout"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(icone ? Icons.add : Icons.restaurant),
        onPressed: () async {
          icone = !icone;
          await controller.listarTodos();
          setState(() {});
        },
      ),
      body: FutureBuilder<List<UserModel>>(
          future: controller.listarTodos(),
          builder: (context, snapshot) {
            List<UserModel> list = snapshot.data;
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(list[index].nome),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetails(user: list[index]),
                      ),
                    );
                  },
                );
              },
            );
          }),
    );
  }
}
