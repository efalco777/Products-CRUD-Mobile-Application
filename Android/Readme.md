🛒 Clean Architecture Products CRUD App
=============
This repository contains the Android version of the mobile app built using Jetpack Compose. 
It leverages modern Android development tools and libraries to ensure a scalable, maintainable, and testable app.

⚡**Features**
--------------- 
* Build Variants: The app supports three build variants:
  * dev: For development and debugging.
  * staging: For testing in a staging environment.
  * prod: For production builds.
* Jetpack Compose: Fully declarative UI with modern composables.
* Hilt: Dependency Injection for managing application-level dependencies.
* Retrofit: For API interaction and networking.
* Coroutines: For asynchronous programming.
* Lifecycle Components: ViewModel integration with Compose.
* Material Design: UI adheres to Material Design principles.

🔑 **Key Dependencies**
--------------- 
The app relies on the following major dependencies:

❗ **Core Libraries**
--------------- 
* Retrofit: REST API integration.
* Gson Converter: For JSON serialization/deserialization.
* Kotlin Coroutines: To handle asynchronous tasks.
* AndroidX Lifecycle ViewModel: For UI-related data lifecycle management.

💉 **Dependency Injection**
--------------- 
* Hilt: Simplified dependency injection.
* Dagger: Core DI framework.


📱 **UI Components**
--------------- 
* AndroidX Compose: For building a declarative UI.
* Material Components: Material Design guidelines and components.
  
🧪 **Testing**
--------------- 
* JUnit: Unit testing.
* Espresso: UI testing.
* Compose Testing Framework: For UI testing in Jetpack Compose.
* MockK: Mocking library for Kotlin.
* Turbine: Testing coroutines flows.

📜 **Prerequisites**
--------------- 
* Android Studio: Latest stable version.
* Gradle: Compatible version included in the project.

⚙️ **Build Variants**
--------------- 
1. Open Android Studio.
2. Navigate to Build > Select Build Variant.
3. Choose dev, staging, or prod.

▶️ **Running the App**
--------------- 
1. Clone the repository.
2. Open the project in Android Studio.
3. Sync Gradle files.
4. Select a device or emulator and click Run.
