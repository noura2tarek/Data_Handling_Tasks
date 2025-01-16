import 'package:data_handling_task1/models/employee_model.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.user});

  final EmployeeModel user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.grey.shade200,
      splashColor: Colors.grey.shade300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      leading: CircleAvatar(
        radius: 20.0,
        backgroundColor: Colors.green,
        backgroundImage: NetworkImage(user.imageUrl ?? ""),
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
          color: Colors.green,
        ),
      ),
    );
  }
}
