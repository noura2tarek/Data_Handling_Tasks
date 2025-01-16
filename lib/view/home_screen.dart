import 'dart:convert';
import 'package:data_handling_task1/core/app_strings.dart';
import 'package:data_handling_task1/models/employee_model.dart';
import 'package:data_handling_task1/services/api_service.dart';
import 'package:data_handling_task1/view/widgets/custom_app_bar.dart';
import 'package:data_handling_task1/view/widgets/start_button.dart';
import 'package:data_handling_task1/view/widgets/users_list.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<EmployeeModel> users = [];
  bool isLoading = false;

  /*--- Get employees data from API method ---*/
  getData() async {
    isLoading = true;
    setState(() {});
    users = await ApiService().getUsersData();
    isLoading = false;
    setState(() {});
  }

  /*--- Get cached employees data if exists method (from main file) ---*/
  getCachedData() {
    if (cachedList.isNotEmpty) {
      print("There is data in the cache");
      // Decode the cached string and returns the resulting Json object.
      var jsonData = jsonDecode(cachedList);
      jsonData.forEach((user) {
        users.add(EmployeeModel.fromJson(user));
      });
      setState(() {});
    }
  }

  @override
  void initState() {
    getCachedData();
    super.initState();
  }

  ////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppStrings.employeeData,
        leadingVisibility: false,
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(color: Colors.blueAccent),
            )
          : users.isEmpty && cachedList.isEmpty
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
