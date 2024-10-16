This web application was developed for learning and showcasing my skills in web development.

It functions as a basic database management system, enabling the display, listing, sorting, searching, adding,
and deleting of users. Each user has attributes such as ID, Name, Surname, Gender, Date of Birth, Email, Phone
Number, and Type of Insurance. Users can be displayed and sorted by table columns, with pagination available
below the table. The search feature allows you to find users individually by their ID, Name, or Surname.
Deleting a user is as simple as entering their ID in the "Remove User" form. New users can be added via the
"Add User" form, with validation performed both on the client and server sides.

This application is built using MySQL for database management and developed in Java using the Spring Boot
framework with an MVC architecture. JavaScript and CSS are used for formatting and enhancing the user interface.

For the application to function correctly, it must be connected to a running MySQL database.
The database should be named mydatabase and contain a table called "users".
The structured table can be imported from the file myDatabaseEmpty.sql.
For demonstration purposes, you can use myDatabase.sql, which contains example data.
