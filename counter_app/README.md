# 🔢 Counter App (Flutter + Provider)

A simple Counter Application built using **Flutter** and **Provider (State Management)**.  
This project was created as part of my Flutter learning journey to understand:

- Stateful & Stateless Widgets  
- Provider for state management  
- UI updates based on state  
- Dynamic color changes based on value  

---

## 📸 Features

✔ Increase counter  
✔ Decrease counter  
✔ Reset counter  
✔ Dynamic text color based on value  
   - 🔴 Negative → Red  
   - ⚪ Zero → Grey  
   - 🟢 Positive → Green  
✔ Clean UI with Provider state management

---

## 🛠️ Technologies Used

- **Flutter**
- **Dart**
- **Provider (ChangeNotifier)**  
- Scaffold, AppBar, Column  
- ElevatedButton, TextButton

---

## 🧠 How It Works

### **1. CounterProvider (Logic & State)**
- Holds the counter value  
- Updates UI using `notifyListeners()`  
- Changes display color depending on count value

### **2. BodyContainer (UI Layer)**
- Displays the counter
- Uses `Consumer` & `context.watch()` to listen to changes
- Buttons to increment, decrement, reset

### **3. main.dart (App Setup)**
- Registers Provider using `MultiProvider`
- Starts the app with `MyApp()`

---

## ▶️ How to Run

1. Navigate to the app folder:
   ```bash
   cd counter_app

## Screenshort
![WhatsApp Image 2025-11-14 at 12 45 24_d27bafce](https://github.com/user-attachments/assets/f9838dc0-88bc-4a89-b7f0-2d368da25eda)


