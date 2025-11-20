# 🏃‍♂️💨 WordSprint — A Simple Typing Speed Game (Flutter)

WordSprint is a beginner-friendly **typing speed game** built using Flutter.  
This app was created during my Flutter learning journey as an intern at **Aufait**.

The goal of the game is simple:  
👉 Type the displayed word correctly and press **space** to move to the next one.  
⏱️ You have **60 seconds**, and your final score + WPM is displayed at the end.

---

## 🚀 Features

- Displays a **random word** from a predefined list.
- Timer countdown from **60 seconds**.
- Auto-check when the user presses **space**.
- Calculates:
  - ✅ Words attempted  
  - ✅ Correct words  
  - ✅ Words-per-minute (WPM)
- Simple and clean UI.
- Focus automatically moves to the input box.

---

## 🎯 Learning Highlights

This project helped me practice:

- **Stateful Widgets**
- **Timers in Flutter**
- **TextFields & FocusNodes**
- **Random word generation**
- **Basic game logic**
- **Navigation using `MaterialPageRoute`**
- **Organizing project structure (views, data)**

---

## 🛠️ Technologies Used

- **Flutter**
- **Dart**
- **Material Design Widgets**
  
---
## 🧠 How It Works (Logic Summary)

### 1️⃣ Random Word Generator
Uses `Random()` to pick a word from `wordList`.

### 2️⃣ Game Timer
A `Timer.periodic()` decreases time every second and stops at 0.

### 3️⃣ Word Validation
When the user types a word and presses **space**, the app checks:

```dart
if (typedWord == currentWord) score++;
````
### 4️⃣ WPM Calculation
Uses `Random()` to pick a word from `wordList`.


## Screenshorts

![WhatsApp Image 2025-11-14 at 15 06 12_ceb603cd](https://github.com/user-attachments/assets/69bae127-900b-49aa-af1d-8c9150174926)
![WhatsApp Image 2025-11-14 at 15 06 13_9ee0c0cb](https://github.com/user-attachments/assets/fa1ea801-0831-4f94-88ad-7c268fdd5243)
![WhatsApp Image 2025-11-14 at 15 06 13_add99bb1](https://github.com/user-attachments/assets/d52e4a89-6e6a-41f9-9639-b7959a7fb33a)
![WhatsApp Image 2025-11-14 at 15 06 13_daf9e8cc](https://github.com/user-attachments/assets/49936da2-d905-40f2-aea1-93b21e2a8d22)





