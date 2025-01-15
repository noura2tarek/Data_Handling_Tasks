class EmployeeModel {
  int? id;
  String? imageUrl;
  String? firstName;
  String? lastName;
  String? email;
  int? salary;

  EmployeeModel({
    this.id,
    this.imageUrl,
    this.firstName,
    this.lastName,
    this.email,
    this.salary,
  });

  EmployeeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageUrl = json['imageUrl'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    salary = json['salary'];
  }
}
