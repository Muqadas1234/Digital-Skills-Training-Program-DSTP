# 📱 Flutter Calculator App

A sleek, intuitive, and modern calculator application built with Flutter and Dart as part of the **Digital Skills Training Program (DSTP)**.

---

## 🌟 Overview

This application provides a smooth and responsive everyday calculation experience inspired by modern mobile calculator interfaces. It features an eye-friendly dark theme with high-contrast colored keys, making it both aesthetic and functional for quick arithmetic tasks.

---

## ✨ Features

- **Standard Arithmetic Operations**: Perform addition (`+`), subtraction (`-`), multiplication (`*`), and division (`/`).
- **Modulo Calculations**: Quick remainder/percentage calculations using `%`.
- **Division by Zero Protection**: Gracefully displays an `error` state rather than crashing when dividing by zero.
- **Clear Display (`AC`)**: Reset calculations and start fresh with a single tap.
- **Decimal Support**: Perform calculations with floating-point numbers.
- **Clean UI & Color Coding**:
  - 🟠 High-contrast orange keys for operational actions (`+`, `-`, `*`, `/`, `%`, `=`, `AC`).
  - 🔘 Subdued grey keys for numeric input (`0` - `9`, `.`).
  - ⚫ Minimalist deep black background matching modern system dark modes.
- **Responsive Layout**: Custom modular keypad widgets designed to fit neatly across various screen sizes.

---

## 🛠️ Project Structure

```text
my_calculator/
├── lib/
│   ├── calculator.dart          # Core calculator UI, keypad grid, and arithmetic logic
│   ├── main.dart                # Application entry point and theme setup
│   └── utils/
│       └── app_colors.dart      # Reusable color constants (Black, White, Grey, Orange)
├── pubspec.yaml                 # Dependencies and project metadata
└── README.md                    # Project documentation
```

---

## 🚀 Getting Started

### Prerequisites

Ensure you have the following installed on your machine:
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (version `^3.11.4` or higher)
- [Dart SDK](https://dart.dev/get-dart)
- An emulator (Android/iOS) or a connected physical device / Chrome for web testing.

### Installation & Running

1. **Navigate to the calculator directory:**
   ```bash
   cd my_calculator
   ```

2. **Fetch project dependencies:**
   ```bash
   flutter pub get
   ```

3. **Launch the application:**
   ```bash
   flutter run
   ```

---

## 🧰 Tech Stack

- **Framework**: Flutter
- **Language**: Dart
- **Design Paradigm**: Material Design with custom modular components

---

## 👤 Author

Developed by **Muqadas Akram**  
Digital Skills Training Program (DSTP)
