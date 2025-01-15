class EmployeeModel {
  int? id;
  String? imageUrl;
  String? firstName;
  String? lastName;
  String? email;
  String? contactNumber;
  String? dataOfBirth;
  int? age;
  int? salary;
  String? address;

  EmployeeModel(
      {this.id,
      this.imageUrl,
      this.firstName,
      this.lastName,
      this.email,
      this.contactNumber,
      this.age,
      this.salary,
      this.dataOfBirth,
      this.address});

  EmployeeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageUrl = json['imageUrl'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    contactNumber = json['contactNumber'];
    age = json['age'];
    salary = json['salary'];
    address = json['address'];
    dataOfBirth = json['dob'];
  }
}
