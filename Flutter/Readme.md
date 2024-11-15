🛒 Clean Architecture Products CRUD App
=============

This repository contains the Flutter version of the mobile app built using **Flutter** and the **BLoC** pattern. 
It leverages modern Flutter development tools and libraries to ensure a scalable, maintainable, and testable app.

⚡**Features**
---------------
* The app supports multiple configurations:
  * dev: For development and debugging.
  * staging: For testing in a staging environment.
  * prod: For production builds.
* Flutter BLoC: For state management and handling business logic.
* Retrofit: For API and networking code generation.
* Dio: A robust HTTP client for making API requests.
* Easy Localization: Built-in support for multiple languages.
* Dependency Injection: Using GetIt and Injectable.
* Google Fonts: Custom fonts integration.
* Cached Network Image: Efficient image caching for better performance.
* Lottie: Animated vector graphics support.

🔑 **Key Dependencies**
---------------
The app relies on the following major dependencies:

❗ **Core Libraries**
---------------
* Dio: HTTP client for REST API interaction.
* Retrofit: Type-safe API requests code generation tool.
* JSON Annotation & Serialization: For JSON parsing.
* Easy Localization: Multi-language support.
* Pretty Dio Logger: For structured debug logging for all network requests.

💉 **Dependency Injection**
---------------
* Injectable: Simplifies dependency injection setup via code generation.
* GetIt: Lightweight service locator for dependency management.

📱 **UI Components**
--------------- 
* Flutter Widgets: Fully declarative UI using Flutter’s rich widget library.
* Google Fonts: Material Design typography with custom fonts.
* Cached Network Image: Efficient image loading and caching.
* Lottie: Animated vector graphics for enhanced UI.

🧪 **Testing**
---------------
* bloc_test: For testing BLoC components.
* mockito: For mocking dependencies in unit tests.
* Very Good Analysis: Linting and code quality checks.
* Build Runner: Code generation for testing utilities.

📜 **Prerequisites**
---------------
* Flutter SDK: Latest stable version.
* Dart SDK: Compatible version included with Flutter.
* VSCode: latest version with Flutter plugin installed.


▶️ **Running the App**
--------------- 
1. Clone the repository.
2. In the root directory `sh ./generate_code.sh` to install dependencies & generate code if necessary.

3. Either:
  * Select a running configuration in VS Code & press run.

ㅤㅤ**OR**

  * In terminal run following command: `flutter run --flavor -t ./lib/main_{dev|staging|prod}.dart` where inside {} you specify the running configuration.

⚗️ **Testing the App**
--------------- 
1. Go to root project directory.
2. Run: `flutter test`.
