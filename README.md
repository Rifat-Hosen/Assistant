# Responsive Flutter Demo Project

This Flutter demo project that adapt UI for mobile, tablet, and desktop screens. By using custom layout design, breaking points and extension. The app dynamically adjusts its layout and components based on the screen size, providing an optimal user experience across devices.
# Architecture
- Flutter MVVM architecture

### Folder Descriptions:

- **models/**: Contains data models and business logic for the app, such as classes to represent data and other entities.
- **view/**: This directory is divided by device type (mobile, tablet, desktop) and contains the UI components. It also includes shared widgets that can be reused across different layouts.
- **viewmodels/**: Responsible for managing application state using `ReactiveValueNotifier`. The ViewModel interacts with the services and provides the data to the views.
- **responsive_layout.dart**: The entry point of the application, where the `MaterialApp` is initialized, and responsive breakpoints are set up.
- **routes.dart**: Defines the named routes for navigation across different screens in the app.


## Features

- **Responsive UI**: Automatically adjusts layouts for different screen sizes (mobile, tablet, desktop).
- **Adaptive Layouts**: Different UI layouts for mobile, tablet, and desktop using `Custom extension `.
- **Screen Size Handling**:custom extension screen scaling and breakpoints.

# Required design for Project
![Desktop UI](assets/ui/ui_design.png)

# some devloped UI layout for different screen
![Desktop UI](assets/ui/desktop.png)
![Desktop UI](assets/ui/desktop2.png)

![Desktop UI](assets/ui/phone1.png)
![Desktop UI](assets/ui/phone2.png)

![Desktop UI](assets/ui/tab1.png)
![Desktop UI](assets/ui/tab2.png)


## Limitations

- **Font**: The required font(s) specified in the project isn't exactly found.
- **Icon**: Some icons are used by screenshot so there is some glitch in Ui, and some icons are use from flutter icon that are not exactly same.
- **Breaking points**: Breaking points may different and need modification in extension for adaptive UI.
- **Testing**: need more testing for UI error found
- **Design Limitations**: The required design is provided only for desktop. Mobile and tablet interfaces have been built based on assumptions, which may not align perfectly.
  
