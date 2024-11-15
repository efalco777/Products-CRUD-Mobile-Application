This repository contains a set of mobile applications implemented in three different frameworks, showcasing a consistent structure and functionality across platforms. 
The goal is to provide a comparative study of development paradigms in iOS SwiftUI, Android Jetpack Compose and Flutter, using modern architectural practices.

Contents
- iOS: Developed with SwiftUI and ViewModel.
- Android: Built using Jetpack Compose and ViewModel.
- Flutter: Implemented with the BLoC (Business Logic Component) pattern.
  
Each project includes:
- Core modular architecture, including layers for Data, Domain, and Presentation.
- Dependency Injection (DI) mechanisms.
- Network handling with reusable components.
- Localization support.
- Example features for product listing and details.

The common structure is divided into:
- Core: Shared utilities, dependency injection, logging, and app configuration.
- Data: API interaction, DTOs, and repositories for remote data handling.
- Domain: Business logic and use cases, separating application logic from UI concerns.
- Presentation: UI components, ViewModels (or equivalent), and mappers for transforming data to UI models.

This structure ensures high scalability and clear separation of concerns.

This repository serves as a reference for understanding cross-platform mobile development and for exploring architectural patterns in native and cross-platform mobile frameworks.
