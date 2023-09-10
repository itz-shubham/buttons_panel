
# Buttons Panel

Buttons Panel is a Flutter plugin that lets you create a row/column of buttons that appear as if they're connected in a single line. It gives the illusion of a unified widget, but users can still choose one of the options by tapping the button of their choice.

## Short Demo

<p align='center'>
  <img src="https://raw.githubusercontent.com/Itz-Shubham/buttons_panel/main/buttons_panel_package.gif" />
</p>

## Features

- **Button Panel:** Create a panel containing multiple buttons for users to interact with.

- **Customization:** Customize the appearance of the buttons, including colors, text or icons theme, selected item theme background colors, etc.

- **Callback Functions:** Set callback functions to handle user interactions when buttons are pressed.

- **Flexible Layout:** Easily integrate the Buttons Panel into your app's layout and design.

## Installation

To use this plugin in your Flutter project, add `buttons_panel` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  buttons_panel: ^0.0.1  # Replace with the latest version

```

Then, run `flutter pub get` to install the package.

## Usage

Import the package in your Dart code:

```dart
import 'package:buttons_panel/buttons_panel.dart';
```

Create a Buttons Panel widget:

```dart
ButtonsPanel(
  currentIndex: _currentIndex,
  onTap: (value) => setState(() => _currentIndex = value),
  children: const [
    Text("Home"),
    Text("Search"),
    Text("Profile"),
  ],
),
```

For more detailed usage and customization instructions, please refer to the [example](/example).

## Contributing

We welcome contributions to Buttons Panel Flutter Plugin! Feel free to open issues, create pull requests, or provide feedback to help improve this package.

## License

This package is distributed under the [MIT License](/LICENSE).
