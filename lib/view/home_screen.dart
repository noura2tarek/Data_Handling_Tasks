import 'package:data_handling_task1/core/app_strings.dart';
import 'package:data_handling_task1/models/employee_model.dart';
import 'package:data_handling_task1/services/api_service.dart';
import 'package:data_handling_task1/view/widgets/start_button.dart';
import 'package:data_handling_task1/view/widgets/users_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<EmployeeModel> users = [];
  bool isLoading = false;

  /*--- Get employees data method ---*/
  getData() async {
    isLoading = true;
    setState(() {});
    users = await ApiService().getUsersData();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.employeeData,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : users.isEmpty
              ? Align(
                  alignment: Alignment.center,
                  child: StartButton(
                    onTap: () => getData(),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: UsersList(users: users),
                ),
    );
  }
}

////////////////////////////////////////
