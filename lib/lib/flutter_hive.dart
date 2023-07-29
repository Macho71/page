import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chat App"),),
      body: Column(
        children: [
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(hintText: "Ismingizni kiriting" ),
          ),TextFormField(
            controller: nameController,
            decoration: InputDecoration(hintText: "Emailingizni kiriting" ),
          ),
          ElevatedButton(onPressed:()async{
            await Hive.openBox("user");
            print(await Hive.box("user").get("name"));
          } ,child: child)

        ],
      ),
    );
  }
}
