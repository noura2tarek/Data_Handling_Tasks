import 'dart:convert';
import 'dart:io';
import 'package:data_handling_task1/models/employee_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  //String endPoint = 'https://mocki.io/v1/283ba093-9bf9-42e4-8f28-d2538937f9ca';
  var url = Uri.https('mocki.io', 'v1/283ba093-9bf9-42e4-8f28-d2538937f9ca');

  Future<List<EmployeeModel>> getUsersData() async {
    List<EmployeeModel> users = [];

    try {
      var response = await http.get(url);
      var body = response.body;
      // use json decode method to convert the string body
      // and returns the resulting Json object.
      var data = jsonDecode(body);
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
