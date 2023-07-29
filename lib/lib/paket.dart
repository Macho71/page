
import 'package:hive_flutter/adapters.dart';

class GetUserService {
  static openBox() async {
    await Hive.openBox("user");
  }

  static writeToBox(String name, String email) async {
    await Hive.box("user").put("name", name);
    await Hive.box("user").put("email", email);
  }
static updateBox()async{

}
static deleteBox() async{}

}
