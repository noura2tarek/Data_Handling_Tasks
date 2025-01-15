import 'package:flutter/material.dart';
import '../../models/employee_model.dart';
import 'custom_list_tile.dart';

class UsersList extends StatelessWidget {
  const UsersList({
    super.key,
    required this.users,
  });

  final List<EmployeeModel> users;

  /*-------------- Users list widget ----------------*/

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: users.length,
      itemBuilder: (context, index) {
        EmployeeModel user = users[index];
        return CustomListTile(
          user: user,
        );
      },
      separatorBuilder: (context, index) => SizedBox(
        height: 8.0,
      ),
    );
  }
}
