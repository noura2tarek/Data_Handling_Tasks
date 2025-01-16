# data_handling_tasks

Hello, i'm Noura Tarek.   
This repo contains data handling task1
with description of:
Fetch employee data using HTTP then Parse JSON responses and map them to model.
The application contains a home screen with a button in the center to get data and the list of employees when
loaded.

1- I use http package to send http requests.     
2- The api in the task has an error so, i use this:  
link: 'https://mocki.io/v1/283ba093-9bf9-42e4-8f28-d2538937f9ca' .   
3- I use dart:convert package to to decode the response body.   
4- Then, i parse the json data and map it to employee model.   
5- The service method returns the users list.   
6- I use the users list to build the UI but,    
first i'm calling the service method in the start
button.           
7- After loading the data and the list is ready, i'm calling the setState method to update the
UI.    
8- In the start of the application, the start button is appeared to get data, after the list is
loaded, this button is removed.

The output images in assets/images folder.    
I use the structure of models - services - view.   
The employee model is in models folder.    
The api service is in services folder.    
The screens and widgets is in view folder.

Note:---------------------------------------------------
The task2 in the same repo in branch employee_details(T2). 

