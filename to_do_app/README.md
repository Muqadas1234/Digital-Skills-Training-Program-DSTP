# 📋 Student Manager & To-Do App

A dynamic, clean, and intuitive student record management and task tracking application built with Flutter and Dart as part of the **Digital Skills Training Program (DSTP)**.

---

## 🌟 Overview

The **Student Manager & To-Do App** demonstrates fundamental CRUD (Create, Read, Update, Delete) patterns and multi-screen state management in Flutter. Designed with a clean Material Design interface, the app allows users to seamlessly add students, manage student profiles, edit details on the fly, and remove records when no longer needed.

---

## ✨ Features

- **Full CRUD Functionality**:
  - ➕ **Create**: Add new students with name and father's name fields; automatically assigns a unique student ID.
  - 👁️ **Read / View**: Display all registered students in organized, card-based list views.
  - ✏️ **Update**: Edit existing student records using a pre-populated form screen.
  - 🗑️ **Delete**: Remove students from the list with a single tap.
- **Dynamic Routing & Navigation**:
  - Smooth page transitions using Flutter's `Navigator` and `MaterialPageRoute`.
  - Asynchronous return data handling (`await Navigator.push`) to immediately update parent UI state.
- **Card-Based UI Design**:
  - Soft pastel blue card styling (`Colors.blue.shade50`) with clear typography.
  - Quick action buttons (Edit ✏️ and Delete 🗑️) directly on each item card.
- **Floating Action Button (FAB)**:
  - Accessible primary action button at the bottom-right corner for effortless record additions.

---

## 🛠️ Project Structure

```text
to_do_app/
├── lib/
│   ├── main.dart                       # Student model, list view screen, card components, and main app entry
│   └── for_student_add_student.dart    # Add student screen and Edit student screen
├── pubspec.yaml                        # Project metadata and dependencies
└── README.md                           # Documentation for the app
```

---

## 🚀 Getting Started

### Prerequisites

Ensure you have the following installed on your machine:
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (version `^3.11.4` or higher)
- [Dart SDK](https://dart.dev/get-dart)
- An active Android emulator, iOS simulator, or connected physical device.

### Installation & Running

1. **Navigate to the to_do_app directory:**
   ```bash
   cd to_do_app
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the app:**
   ```bash
   flutter run
   ```

---

## 🧰 Tech Stack

- **Framework**: Flutter
- **Language**: Dart
- **State Management**: `StatefulWidget` with `setState()`
- **Navigation**: `Navigator.push` & `Navigator.pop` with typed results

---

## 👤 Author

Developed by **Muqadas Akram**  
Digital Skills Training Program (DSTP)
