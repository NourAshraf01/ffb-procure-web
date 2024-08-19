# FFB Procure - Frontend Documentation

## Overview

**FFB Procure** is a Flutter web application that was initially built using FlutterFlow and then exported to Flutter code, with some modifications for improved readability and functionality. The app uses Supabase as its database provider and includes a variety of custom components and widgets. FlutterFlow employs the Model-View-Controller (MVC) pattern to effectively separate concerns between data logic and user interface (UI). For each component, you’ll find a model file responsible for managing data states and business logic, and a widget file dedicated to rendering the UI and reflecting any updates to the data state.
## Table of Contents

- [Getting Started](#getting-started)
  - [Installation](#installation)
  - [Dependencies](#dependencies)
  - [Running the App](#running-the-app)
- [Folder Structure](#folder-structure)
  - [auth/](#auth)
  - [backend/](#backend)
    - [api_requests/](#api_requests)
    - [schema/](#schema)
    - [supabase/](#supabase)
  - [components/](#components)
  - [custom_code/widgets/](#custom_codewidgets)
  - [flutter_flow/](#flutter_flow)
  - [pages/](#pages)
  - [Main Files](#main-files)
    - [app_state.dart](#app_statedart)
    - [index.dart](#indexdart)
    - [main.dart](#maindart)
- [Development Workflow](#development-workflow)
  - [Code Style](#code-style)
  - [Branching Strategy](#branching-strategy)
- [Theming and Styling](#theming-and-styling)
  - [Global Styles](#global-styles)
  - [Custom Themes](#custom-themes)
- [API Integration](#api-integration)
  - [API Documentation](#api-documentation)
  - [Mock Data](#mock-data)

- [Deployment](#deployment)
  - [CI/CD Pipeline](#cicd-pipeline)
  - [Environments](#environments)
- [Troubleshooting](#troubleshooting)
  - [Common Issues](#common-issues)
  - [Debugging Tips](#debugging-tips)
- [References](#references)
## Getting Started

### Installation

1. Clone the repository: `git clone https://github.com/NourAshraf01/ffb-procure-web.git`
2. Navigate to the project directory: `cd ffb-procure-web`

### Dependencies

- Ensure you have Flutter installed and configured.
- Run `flutter pub get` to install required packages.

### Running the App

- To run the app locally, use: `flutter run -d chrome`
- For a production build, use: `flutter build web`

## Folder Structure

### `auth/`

- **Purpose**: Contains all authentication middleware for user management.
- **Key Features**:
  - Handles login, registration, and session management.
  - Manages integration with authentication providers.

### `backend/`

- **Purpose**: Manages communication between the frontend and backend services.

#### `api_requests/`

- **Purpose**: Manages all API interactions.
- **Key Features**:
  - API call functions with error handling and streaming capabilities.

#### `schema/`

- **Purpose**: Defines data structures and utility functions.
- **Key Features**:
  - Data models, enums, and utility functions for type-safe operations.

#### `supabase/`

- **Purpose**: Contains configurations and table definitions for Supabase.
- **Key Features**:
  - Initialization and configuration for Supabase.
  - Direct querying functions for Supabase tables.

### `components/`

- **Purpose**: Holds reusable UI components.
- **Key Features**:
  - Encapsulated UI elements for consistent design across the app.

### `custom_code/widgets/`

- **Purpose**: Contains widgets built with custom code.
- **Key Features**:
  - Specialized widgets with unique behaviors or styles not provided by FlutterFlow.

### `flutter_flow/`

- **Purpose**: Includes default widgets from FlutterFlow.
- **Key Features**:
  - Pre-built widgets and components as exported from FlutterFlow.

### `pages/`

- **Purpose**: Contains the individual pages of the application.
- **Key Features**:
  - Page widgets organized by their functional roles within the app.

## Main Files

### `app_state.dart`

- **Purpose**: Manages global application state.
- **Key Features**:
  - Centralized state management for the app.
  - Methods for updating and retrieving state.

### `index.dart`

- **Purpose**: Facilitates page exports for easy injection.
- **Key Features**:
  - Simplifies page imports and usage within the app.

### `main.dart`

- **Purpose**: Initializes the web application.
- **Key Features**:
  - Sets up global theme and application structure.


## Development Workflow

### Code Style

- Follow the Dart style guide.
- Use consistent naming conventions and formatting.

### Branching Strategy

- Use feature branches for new features and bug fixes.
- Follow the Gitflow or similar branching model.

## Theming and Styling

### Global Styles

- Define and use global styles for consistent design.
- Configure themes in `main.dart`.

### Custom Themes

- Create and apply custom themes as needed.
- Use `ThemeData` for theme customization.

## API Integration

### API Documentation

- Detailed API endpoints, request/response formats, and error handling are described in `backend/api_requests/`.

### Mock Data

- Use mock data for development and testing purposes.
- Mock APIs can be defined in `backend/api_requests/mock_data.dart`.

## Deployment

### CI/CD Pipeline

- Configure CI/CD pipelines using GitHub Actions, GitLab CI, or similar tools.
- Automate builds and deployments.

### Environments

- Set up different environments for development, staging, and production.
- Configure environment-specific settings in `main.dart`.

## Troubleshooting

### Common Issues

- List of common issues and solutions.

### Debugging Tips

- Tips and tools for debugging issues in the app.


## References

- Links to external resources, documentation, and related projects.
