import 'package:flutter/material.dart';
import '../models/user.dart';
import '../routes/app_routes.dart';

class UserTile extends StatelessWidget {
  final User? user;

  const UserTile(
    this.user, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avatar = user!.avatarUrl == null || user!.avatarUrl.isEmpty
        ? CircleAvatar(
            child: Icon(Icons.person),
          )
        : CircleAvatar(
            backgroundImage: NetworkImage(user!.avatarUrl),
          );

    return ListTile(
      leading: avatar,
      title: Text(user!.name),
      subtitle: Text(user!.email),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.USER_FORM,
                  arguments: user,
                );
              },
              icon: Icon(Icons.edit),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
