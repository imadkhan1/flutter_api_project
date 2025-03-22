# Flutter API Project

This Flutter project demonstrates how to fetch and display complex data from a REST API. It uses the `http` package to make API calls and displays the data in a structured and user-friendly interface. The app includes navigation between a home page and a detailed API data display page.

## Features

- Fetches data from the [JSONPlaceholder API](https://jsonplaceholder.typicode.com/users).
- Parses and displays nested JSON data (e.g., address, geo-coordinates, and company details).
- Implements a reusable widget (`ReusableRow`) for displaying key-value pairs.
- Includes navigation between the home page and the API data display page.
- Displays data in a scrollable list using `ListView`.

## Project Structure
flutter_api_project/ ├── lib/ │ ├── main.dart # Entry point of the application │ ├── home_page.dart # Home page with navigation to API data page │ ├── complex_get_api.dart # Fetches and displays API data │ ├── Models/ │ │ └── user_model.dart # Model class for parsing JSON data ├── pubspec.yaml # Project dependencies

## Getting Started

### Prerequisites

- Flutter SDK installed on your machine.
- A code editor like [Visual Studio Code](https://code.visualstudio.com/).
- Internet connection to fetch data from the API.

### Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd flutter_api_project
2.Install dependencies:
  flutter pub get
3.Run the app:
  flutter run
API Used
This project uses the JSONPlaceholder API to fetch user data. The API provides mock data for testing and prototyping.

Code Overview
main.dart
Entry point of the application.
Sets up the HomePage as the initial screen.
home_page.dart
Displays a button that navigates to the ComplexGetApi screen.
Uses Navigator.push to handle navigation.
complex_get_api.dart
Fetches data from the API endpoint https://jsonplaceholder.typicode.com/users using the http package.
Parses the JSON response into a list of UserModel objects.
Displays user data in a ListView using a Card widget.
Uses the ReusableRow widget to display key-value pairs for user details.
user_model.dart
Defines the UserModel class to parse and handle the JSON data.
Handles nested objects like Address, Geo, and Company to represent complex JSON structures.
ReusableRow Widget
A custom widget to display key-value pairs in a row format.
Used extensively to display user details in a clean and consistent manner.
Dependencies
The project uses the following dependencies:

http: For making HTTP requests.
Add these dependencies to your pubspec.yaml file:
dependencies:
  flutter:
    sdk: flutter
  http: ^latest_version
How It Works
The app starts on the HomePage, which contains a button labeled "Get API Data."
Clicking the button navigates to the ComplexGetApi screen.
The ComplexGetApi screen fetches data from the API and displays it in a scrollable list.
Nested JSON objects (e.g., Address, Geo, Company) are parsed and displayed using the ReusableRow widget.
Screenshots
Home Page	API Data Page
<img alt="Home Page" src="https://via.placeholder.com/150">
<img alt="API Data Page" src="https://via.placeholder.com/150">
License
This project is licensed under the MIT License. See the LICENSE file for details.

Acknowledgments
JSONPlaceholder for providing the mock API.
Flutter documentation for guidance on building the app.

Save this content as [README.md](http://_vscodecontentref_/6) in the root of your project directory. You can customize it further based on your specific requirements.
