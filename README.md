# Astronomy Picture of the Day (APOD) App

In this project, I developed a basic mobile application that fetches the daily astronomy picture and its explanation using NASA's [APOD API](https://api.nasa.gov/). I implemented the app using the **MVVM (Model-View-ViewModel) architecture** to ensure clean code separation, and I followed **SOLID principles** to keep the design modular and maintainable. The app allows users to view the astronomy picture of the day, its title, and a brief description.

### Screenshots

<p float="left">
  <img src="https://github.com/user-attachments/assets/b604331a-910a-4d7d-9278-ae1fd4a88d50" width="200" />
  <img src="https://github.com/user-attachments/assets/d0f89913-2312-44c8-a588-020251364eb1" width="200" />
  <img src="https://github.com/user-attachments/assets/bcd10f1c-04a4-4ae8-948a-b3f364494e5b" width="200" />
  <img src="https://github.com/user-attachments/assets/2c49d5aa-8b83-4437-92e1-3caa9423aa67" width="200" />
</p>

### Features

- **MVVM Architecture**: The app follows the MVVM pattern for clean separation between the UI and business logic, making the code more modular and easier to manage.
- **SOLID Principles**: The project adheres to SOLID principles, ensuring that each component has a single responsibility, making the system more scalable and maintainable.
- **NASA's APOD API Integration**: The app fetches data asynchronously from NASA’s [APOD API](https://api.nasa.gov/) using **async/await** to retrieve the astronomy picture of the day along with its description and title.

### Technologies

- **SwiftUI**: For building a responsive user interface.
- **Async/Await**: For handling asynchronous API calls, simplifying code readability and error handling.
- **MVVM Architecture**: For ensuring separation of concerns between UI and logic.


**Note:** You can generate your own NASA API key from [NASA's API Portal](https://api.nasa.gov/) and include it in your project for personalized access.
