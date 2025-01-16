# Data_handling_tasks

Task2

# Fetch employees data and its details.

Hello, i'm Noura Tarek.   
This branch contains data handling task2
With description of:
Fetch employee data using Dio and implement error handling using try-catch then parse JSON responses
and map them to model then cache the employee list locally.

This project steps:
The model and api service are the same of task1 but using dio package.

1- The api in the task has an error so, i use this:  
link: 'https://mocki.io/v1/283ba093-9bf9-42e4-8f28-d2538937f9ca' .   
This api link don't have any employee position as required.

2- I use shared preferences to cache the employees list locally.
by saving the response as string and then reading it from shared preferences and convert it to json
again to apply modeling.
3- Loading indicator added while the data is loaded when clicking to the 'click to get data' button.
4- Employee profile screen added to show more details of the employee and manage navigation between
screens.

The output images in assets/images folder.    
I use the structure of models - services - view.   
The employee model is in models folder.    
The api service is in services folder.    
The screens and widgets is in view folder.    

