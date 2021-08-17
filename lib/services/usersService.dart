import 'package:login/models/users.dart';
import 'package:dio/dio.dart';

class UserService {
  String baseUrl = "https://jsonplaceholder.typicode.com/";
  String users = "users";
  Future<List<User>> getUsers() async {
    List<User> userslist = [];
    Dio dio = new Dio();
    Response access = await Dio().get("$baseUrl"+"$users");
    var data = access.data;
    data.forEach((userItem) {
      User user = User.fromJson(userItem);
      userslist.add(user);
    });
    return userslist;
  }
}
