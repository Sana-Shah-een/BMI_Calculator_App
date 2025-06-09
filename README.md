# BMI Calculator App – Flutter

[![Flutter](https://img.shields.io/badge/Flutter-v3.x-blue.svg?logo=flutter)](https://flutter.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![State Management](https://img.shields.io/badge/State%20Management-setState-green.svg)](https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple)

A clean, responsive, and cross-platform **BMI Calculator App** developed using **Flutter** and **Dart**. This application enables users to calculate their BMI using weight (in kilograms) and height (in feet and inches), providing categorized health feedback based on the result. The app includes a modern Material Design interface with both **light and dark themes**.

---

## 📱 Features

- 🔢 **BMI Calculation**: Compute BMI based on metric inputs (kg, ft/in)
- 🌗 **Theme Toggle**: Light/Dark theme switch using Flutter’s `ThemeData`
- 💡 **Interactive UI**: Clean layout with Material Components
- ✨ **Input Validation**: Ensures all fields are filled before calculating
- 📊 **Health Feedback**: Displays BMI with classification (Healthy, Overweight, Underweight)

---

## 🛠️ Tech Stack

| Technology  | Usage                                  |
|-------------|----------------------------------------|
| Flutter     | Cross-platform app development         |
| Dart        | Programming language                   |
| Material UI | UI widgets and layout                  |
| setState    | Local state management                 |
| ThemeData   | Light/Dark theme configuration         |

---

## 📸 Screenshots

### Light Theme
![Light Theme](light_mode.png)
![Light Theme](lightmode_ss.png)


### Dark Theme
![Dark Theme](dark_mode.png)
![Dark Theme](darkmode_ss.png)


## 🚀 Getting Started

### 🔧 Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Android Studio / VS Code / Xcode

---

### 📁 Folder Structure

```bash
├── lib
│   ├── main.dart         # App entry point with theme toggle
│   ├── bmi_calc.dart     # UI and BMI logic
│   └── theme.dart        # Light and dark theme definitions


