# 📚 Flutter Quiz App

A simple and interactive **Quiz Application** built using **Flutter** as part of my Flutter learning journey during my internship at **Aufait**.  
This project demonstrates UI building, state management, navigation between screens, and dynamic question handling.

---

## 🚀 Features

- 🎯 Start screen with animated UI  
- ❓ Multiple-choice quiz questions  
- 🔀 Answers are shuffled dynamically  
- ✅ Results summary with correct/wrong indication  
- 🔁 Restart quiz option  
- 🎨 Custom colors and reusable widgets  
- 📱 Fully responsive UI

---

## 🛠️ Technologies Used

- **Flutter**
- **Dart**
- **Provider**
- **Google Fonts**
- **Custom Widgets**

---

## 📌 How It Works

### 1️⃣ Start Screen  
The user taps **Start** to begin the quiz.  
Includes a gradient background and a quiz logo.

### 2️⃣ Question Screen  
- Displays one question at a time  
- Shuffled answers  
- On selecting an answer, moves to next question  

### 3️⃣ Results Screen  
- Shows score  
- Lists all questions with:  
  - ✔ Correct answer  
  - ❌ User answer  
- Restart option

---

## 🧠 Logic Overview

### ✔ Handling Questions  
Each question is stored using a `QuizQuestion` model:

  ```dart
    class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

   final String text;
   final List<String> answers;

   List<String> getShuffledAnswer() {
     final shuffledList = List.of(answers);
     shuffledList.shuffle();
     return shuffledList;
   }
   }
```

## ✔ Switching Screens

Using simple state variables:

```dart
var activeScreen = 'start-screen';

void switchScreen() {
  setState(() {
    activeScreen = 'question-screen';
  });
}
```
## ✔ Tracking Answers

Answers stored in a list:
```dart
List<String> selectedAnswers = [];
```

## 🖼️ UI Preview (Conceptual)

Gradient background

Rounded answer buttons

Summary with color indicators

🟢 Correct

🔴 Wrong

🔵 Actual correct answer


##Screenshorts

![WhatsApp Image 2025-11-14 at 13 47 54_93797315](https://github.com/user-attachments/assets/88843cc9-39c8-4371-a3c1-4becb050850b)
![WhatsApp Image 2025-11-14 at 13 47 54_f6bde21e](https://github.com/user-attachments/assets/791cf8dd-0002-4829-a3f9-cc45c6908cdf)
![WhatsApp Image 2025-11-14 at 13 47 54_e41b01b1](https://github.com/user-attachments/assets/a1b92d33-6624-4b8e-9a55-a17fc76cc34a)
![WhatsApp Image 2025-11-14 at 13 47 55_212d258b](https://github.com/user-attachments/assets/a7df4d5f-35fb-4037-8121-cc86071bcaa0)
![WhatsApp Image 2025-11-14 at 13 47 55_5a2108c0](https://github.com/user-attachments/assets/8ca57b57-d30c-429c-a7cc-2ccfb4998a99)
![WhatsApp Image 2025-11-14 at 13 47 55_f65d5974](https://github.com/user-attachments/assets/8ea52cbf-5216-46ea-9db0-962f852ad4b5)
![WhatsApp Image 2025-11-14 at 13 47 56_0e300847](https://github.com/user-attachments/assets/b7fb81ec-db36-4789-b04a-3c9f87c3f52c)






