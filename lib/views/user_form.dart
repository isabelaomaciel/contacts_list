import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  final _form= GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add to contacts'),
        actions: [
          IconButton(
            onPressed: () {
              _form.currentState?.save();
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.save),
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _form,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                onSaved: (value){
                  print('salvando');
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'E-mail'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Avatar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
