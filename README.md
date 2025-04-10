# flutter_project_template
[![flutter_project_template](https://nokycucwgzweensacwfy.supabase.co/functions/v1/get_project_badge?projectId=149)](https://nokycucwgzweensacwfy.supabase.co/functions/v1/get_project_url?projectId=149)

📖 Template for flutter projects using solid_lints, CI for tests and analysis.

- Uses latest stable flutter
- Repo name as your project name
- Organization from your profile email address or default

# Usage
1. Press "Use this template" on the menu.
2. Fill Github form with your new repo name and press "Create repository from template"
3. Wait for it to be created and set up action is complete. In a couple of minutes, you'll see the flutter project created in your repo once Github Actions are complete.
4. Clone and code.

# Random Color App

A Flutter application that displays "Hello there" in the middle of the screen and changes background color randomly when the screen is tapped.

## Features

- Displays "Hello there" in the center of the screen.
- Changes background color to a random RGB color when tapped.
- Tracks and displays the number of color changes.
- Implements clean architecture with BLoC pattern
- Follows SOLID principles and Clean Code practices.

## Architecture

The application follows a clean architecture approach with these layers:

- **Core**: Contains utilities, constants, and common functionality
- **Domain**: Contains business logic, entities, and repository interfaces
- **Data**: Contains repository implementations and data sources
- **Presentation**: Contains UI components, BLoC for state management

## Getting Started

1. Ensure Flutter is installed on your machine
2. Clone the repository
3. Flutter version: 3.24.1
4. Run `flutter pub get` to install dependencies
5. Run `flutter run` to start the application

## Code Quality

This project uses `solid_lints` for static code analysis to ensure code quality.
