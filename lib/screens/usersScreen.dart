import 'package:flutter/material.dart';
import 'package:login/models/users.dart';
import 'package:login/screens/card.dart';
import 'package:login/launch.dart';
import 'package:login/services/usersService.dart';
import 'package:login/screens/userdetails.dart';

class UsersScreen extends StatefulWidget {
  @override
  _UsersScreenState createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  bool loading = true;
  List<User> users = [];

  getUserList() async {
    users = await UserService().getUsers();
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Users"),
        actions: [SizedBox(), Icon(Icons.home), Icon(Icons.menu)],
      ),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.all(9.0),
                    child:InkWell(onTap: (){
                      pushPage(context, UsersDetails(users[index]));
                    },
                    child: MyCard(content: "${users[index].name}"),
                  ),
                );
              },
            ),
    );
  }
}
