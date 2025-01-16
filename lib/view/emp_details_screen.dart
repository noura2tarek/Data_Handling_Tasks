import 'package:data_handling_task1/core/app_strings.dart';
import 'package:data_handling_task1/models/employee_model.dart';
import 'package:data_handling_task1/view/widgets/custom_app_bar.dart';
import 'package:data_handling_task1/view/widgets/custom_details_text.dart';
import 'package:data_handling_task1/view/widgets/details_column.dart';
import 'package:flutter/material.dart';

class EmployeeDetailsScreen extends StatelessWidget {
  const EmployeeDetailsScreen({super.key, required this.employee});

  // The received employee data object
  final EmployeeModel employee;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppStrings.userProfile,
        leadingVisibility: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25.0,
            ),
            //---- User image ----//
            Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.black,
                backgroundImage: NetworkImage(employee.imageUrl ?? ""),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            //---- User name ----//
            Center(
              child: Text(
                '${employee.firstName} ${employee.lastName}',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            //---- User email ----//
            Center(
              child: CustomDetailsText(
                text: employee.email ?? "",
                fontSize: 14.0,
              ),
            ),
            //---- User phone ----//
            Center(
              child: CustomDetailsText(
                text: employee.contactNumber ?? "",
                isPhone: true,
                fontSize: 14.0,
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 20.0,
            ),
            // Salary text and icon column
            DetailsColumn(
              title: AppStrings.salary,
              value: '${employee.salary}\$',
              icon: Icons.monetization_on_outlined,
            ),
            // Age text and icon column
            DetailsColumn(
              title: AppStrings.age,
              icon: Icons.numbers_outlined,
              value: '${employee.age}',
            ),
            // Date of birth text and icon column
            DetailsColumn(
              title: AppStrings.dateOfBirth,
              icon: Icons.calendar_month_outlined,
              value: '${employee.dataOfBirth}',
            ),
            // Address text and icon column
            DetailsColumn(
              title: AppStrings.address,
              icon: Icons.location_on_outlined,
              value: '${employee.address}',
            ),
          ],
        ),
      ),
    );
  }
}
/////////////////////////////////////
