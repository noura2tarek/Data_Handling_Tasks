import 'dart:convert';
import 'dart:io';
import 'package:data_handling_task1/models/employee_model.dart';
import 'package:data_handling_task1/services/shared_pref.dart';
import 'package:dio/dio.dart';

class ApiService {
  String endPoint = 'https://mocki.io/v1/283ba093-9bf9-42e4-8f28-d2538937f9ca';
  Dio dio = Dio();

  Future<List<EmployeeModel>> getUsersData() async {
    List<EmployeeModel> users = [];

    try {
      var response = await dio.get(endPoint);
      var data = response.data;
      String dataString = jsonEncode(data);
      CacheHelper.saveData(key: 'employeesList', value: dataString);
      if (response.statusCode == 200) {
        data.forEach((user) {
          users.add(EmployeeModel.fromJson(user));
        });
      }
    } catch (e) {
      print('error occurred : $e');
    }
    return users;
  }
}

/////////////////////////////////
// Use this class to  bypass SSL verification temporarily,
// because i got this error CERTIFICATE_VERIFY_FAILED
// initialize this class in main.dart
class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    final HttpClient client = super.createHttpClient(context);
    client.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    return client;
  }
}
