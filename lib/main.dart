import 'package:flutter/material.dart';
import 'package:list_contacts/provider/users.dart';
import 'package:list_contacts/routes/app_routes.dart';
import 'package:list_contacts/views/user_form.dart';
import 'package:list_contacts/views/user_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Users(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: UserList(),
        routes: {
          AppRoutes.USER_FORM: (_) => UserForm(),
        },
      ),
    );
  }
}
