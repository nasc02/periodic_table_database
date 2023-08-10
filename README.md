# periodic_table_database

This is an Periodic Table Database and Element Information Script
This project involves working with a PostgreSQL database containing information about various chemical elements. The main goal is to create a script that accepts an argument in the form of an atomic number, symbol, or name of an element and outputs relevant information about the specified element. Additionally, the database does not have all elements, just some.

Project Structure
The project is structured into three main parts:

Part 1: Database Fixes
The provided PostgreSQL database contains some mistakes that need to be corrected. These corrections involve ensuring the accuracy of data and relationships among tables.

Part 2: Git Repository
Create a Git repository to track changes and version control the project. Initialize the repository and ensure that all changes, including code and database modifications, are committed and well-documented.

Part 3: Element Information Script
Develop a Bash script named element.sh that accepts an argument representing the atomic number, symbol, or name of an element. The script will query the database using the provided PSQL variable and output relevant information about the specified element, including its name, symbol, type, atomic mass, melting point, and boiling point.

<h2>How to Use</h2>
Database Setup: You can rebuild the database by entering psql -U postgres < periodic_table.sql in a terminal where the .sql file is.

Element Information Script (element.sh): The script takes one argument in the form of an atomic number, symbol, or name of an element. Run the script using the following format:

/element.sh <argument>

Remember to give <b>chmod +x element.sh</b> in the terminal to give element.sh rights. 

The script will output information about the specified element, including its name, symbol, type, atomic mass, melting point, and boiling point.

Conclusion
This project involves fixing and working with a PostgreSQL database containing information about chemical elements. By completing the database fixes and creating the element information script, you'll have a functional tool to retrieve data about elements based on atomic number, symbol, or name. Make sure to follow the provided instructions.
