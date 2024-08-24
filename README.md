# FFB Procure - Frontend Documentation

## Overview

**FFB Procure** is a Flutter web application that was initially built using FlutterFlow and then exported to Flutter code, with some modifications for improved readability and functionality. The app uses Supabase as its database provider and includes a variety of custom components and widgets. FlutterFlow employs the Model-View-Controller (MVC) pattern to effectively separate concerns between data logic and user interface (UI). For each component, you’ll find a model file responsible for managing data states and business logic, and a widget file dedicated to rendering the UI and reflecting any updates to the data state.
## Table of Contents

- [Getting Started](#getting-started)
  - [App Usage](#app-usage)
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
- [Theming and Styling](#theming-and-styling)
  - [Global Styles](#global-styles)
  - [Custom Themes](#custom-themes)
  - [Applying Themes](#applying-themes)
- [Deployment](#deployment)
  - [CI/CD Pipeline](#cicd-pipeline)
  - [Environments](#environments)

- [References](#references)
## Getting Started

### App Usage

Before diving into the app's development and deployment specifics, it's important to first understand how the app works and functions. A deployed version of the app is accessible through [here](https://ffb-procure.flutterflow.app/). By following the steps in this walkthrough you will get a good grasp on how the app functions and how to use it effectively.

To login, you could the credentials of **ffb@demo.test** for the email and **demo** for the password.

#### Home Page

The first page that loads after logging in is the dashboard page which is also the main home page. 
[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/dashboard_1.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/dashboard_1.png)

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/dashboard_30.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/dashboard_30.png)


### Supplier Management
Supplier management allows you to view, edit, delete and filter suppliers in your database in a convenient and data driven manner.

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_2.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_2.png)

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_3.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_3.png)

Note: The *i* icon being shown next to the `Supplier ID` is a tooltip, if you hover over it will you indicate that it's a supplier that's synced from an external data source and that some fields won't be editable.

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_4.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_4.png)

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_5.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_5.png)

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_6.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_6.png)

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_7.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_7.png)

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_8.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_8.png)

The email that will be received by the supplier.

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_9.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_9.png)

Now supplier can update their own data in our database.

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_10.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_10.png)

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_11.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_11.png)

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_12.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_12.png)

You could either fill supplier data yourself or just fetch a new supplier from the WMS system.

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_13.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_13.png)


[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_14.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_14.png)

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_15.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_15.png)

We could enhance our supplier data analysis by switching to a map view, which would provide a geographically-based perspective. This approach would allow us to filter suppliers by region and better understand how their locations impact the overall risk index.

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_16.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_16.png)

Hovering over a country will show it's risk index.

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_17.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_17.png)

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_18.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/supplier_18.png)

### Production Management
In production management, you could also create and edit projects, products and materials, assign products to projects and assign materials to products. 

`![Production Dashboard (WIP)](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/production_19.png)`

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/production_20.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/production_20.png)

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/production_21.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/production_21.png)

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/production_22.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/production_22.png)

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/production_23.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/production_23.png)

Note: ***Product production schedules affect the calculation of order optimization***

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/production_24.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/production_24.png)

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/production_25.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/production_25.png)

You could configure the strategy to be followed by each material which plays a big role in ***order optimization***. The strategies that are currently available in the system are `Sustainability`, `Risk`, `LeadTime` and `Price`. 

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/production_26.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/production_26.png)

### Order Management
Order management is the module where the ***order optimization*** algorithm is executed, calculating and displaying the optimal weekly orders.

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/order_27.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/order_27.png)

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/order_28.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/order_28.png)

[ ![](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/order_29.png) ](https://github.com/DERBersk/batteryapi/blob/main/wiki_images/walk_throughs/order_29.png)



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


## Theming and Styling

### Global Styles

- Define and use global styles across the app to maintain a consistent design language.
- **Theme Configuration**: Set up themes in `main.dart` using `FlutterFlowTheme.initialize()` to load the saved theme mode and apply it globally.

### Custom Themes

- **Light and Dark Modes**: The application supports both light and dark themes, which are defined in `flutter_flow_theme.dart`. You can customize the color palette and text styles for each mode.
- **Dynamic Theme Switching**: The theme mode (light, dark, or system) can be dynamically switched by users. The choice is saved using `SharedPreferences` for a consistent experience.
- **Typography**: Custom typography settings are implemented using Google Fonts, providing a cohesive look and feel throughout the app.
- **ThemeData Customization**: Utilize `ThemeData` within the `flutter_flow_theme.dart` file to define colors, text styles, and other UI elements for both light and dark modes. This allows for easy adjustments and ensures consistency across all widgets.

### Applying Themes

- **Accessing Theme Data**: Use `FlutterFlowTheme.of(context)` to access the current theme's colors and typography in your widgets.
- **Overriding Text Styles**: Use the `TextStyleHelper` extension to easily override text styles with custom settings like font family, color, size, and more while maintaining the overall theme's consistency.

## Deployment

### CI/CD Pipeline

- Configure CI/CD pipelines using GitHub Actions, GitLab CI, or similar tools to auto build the docker image on each change.

### Environments

- As mentioned in the folder structure, to configure the database url you could go to the `backend` directory and change the `paths`.
- To configure the api url based on the envirnoment you could always change the root url in `backend/api_calls.dart`

```dart
import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Battery API Group Code

class BatteryAPIGroup {
  static String getBaseUrl() => 'https://<your_url>/api'; //change <your_url> to the root url of your backend api
  ///
}
```

## References
- https://ffb-procure.flutterflow.app/
- https://docs.flutterflow.io/
- https://docs.flutter.dev/
- https://docs.docker.com/
- https://geojson.io/
