import 'package:data_handling_task1/models/employee_model.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.user});

  final EmployeeModel user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      focusColor: Colors.purpleAccent,
      tileColor: Colors.grey.shade200,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      leading: CircleAvatar(
        radius: 20.0,
        backgroundImage: NetworkImage(user.imageUrl ?? ""),
        backgroundColor: Colors.blueAccent,
      ),
      title: Text('${user.firstName} ${user.lastName}'),
      subtitle: Text(
        user.email ?? "",
        style: TextStyle(fontSize: 12.0),
      ),
      trailing: Text(
        '${user.salary.toString()}\$',
        style: TextStyle(
          fontSize: 15.0,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
