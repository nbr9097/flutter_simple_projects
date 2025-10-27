# 💰 Expense Tracker App

A simple Flutter application to **track daily expenses** — built as part of my Flutter learning journey from Udemy.  
This project focuses on learning and implementing **core Flutter widgets and concepts** such as `Snackbar`, `TextField`, `ListView.builder`, `showDatePicker`, theming, and responsive design.

---

## 🚀 Features

- ➕ Add new expenses with **title, amount, category, and date**
- 🧾 View all expenses in a **scrollable list**
- ❌ Swipe to delete an expense using the **Dismissible widget**
- ↩️ Undo deletion using a **Snackbar**
- 📅 Select date using **showDatePicker()**
- 💬 Input validation with **AlertDialog()**
- 🎨 Custom light and dark themes using **ThemeData** and `ColorScheme.fromSeed`
- 📱 Responsive UI for different screen sizes using **MediaQuery**
- 📊 Simple **chart visualization** for expenses by category

---

## 🛠️ Widgets & Concepts Learned / Used

- `SnackBar`  
- `TextField`  
- `DropdownButton`  
- `showDatePicker()`  
- `AlertDialog`  
- `ListView.builder`  
- `Dismissible` widget  
- `MediaQuery`  
- `ThemeData` & `ColorScheme`  
- `StatefulWidget` / `StatelessWidget`  
- `showModalBottomSheet()`

---

## 🧩 App Structure
lib/
├── main.dart
├── data/
│ └── expenses_data.dart
├── models/
│ └── expense_model.dart
├── views/
│ └── home_page_view.dart
└── widgets/
├── chart/
│ ├── chart.dart
│ └── chart_bar_widget.dart
├── expense_item_card_widget.dart
├── expenses_list_widget.dart
└── new_expenses_widget.dart

## 🚀 Screenshorts
### HomeScreen
<img width="386" height="1384" alt="image" src="https://github.com/user-attachments/assets/a8379b4c-4e0b-4112-9caf-e174a6906111" />

### New Expense Adding
<img width="356" height="1373" alt="image" src="https://github.com/user-attachments/assets/448ba354-58a2-4819-9070-db69467817ce" />

### Deleting expense
<img width="358" height="1364" alt="image" src="https://github.com/user-attachments/assets/8d7158b6-8c18-445d-8f9f-c26bceef85ca" />

### SnackBar
<img width="369" height="1359" alt="image" src="https://github.com/user-attachments/assets/12bec3b6-44a8-4c56-8f11-5465977a91bf" />


---

## 🎨 Theming

The app supports **both light and dark modes** with color schemes generated using `ColorScheme.fromSeed()`.  
Custom styling is applied to AppBar, Cards, Buttons, and Text.

---

## 💡 Responsive Layout

The layout adapts based on screen width:

- 📱 **Portrait mode (< 600px)** → Chart on top, expenses list below  
- 💻 **Landscape mode (≥ 600px)** → Chart and list displayed side-by-side  

This is handled using `MediaQuery.of(context).size.width`.

---

## ⚙️ How to Run

1. Clone the repository  
   ```bash
   git clone https://github.com/yourusername/expense_tracker_app.git
   cd expense_tracker_app
2. Get dependencies
   ```bash
   flutter pub get
3. Run the app
   ```bash
   flutter run


