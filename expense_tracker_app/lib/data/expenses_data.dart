import 'package:expense_tracker_app/models/expense_model.dart';


 final List<ExpenseModel> registeredExpense = [
    ExpenseModel(
      category: Category.work,
      title: 'flutter course',
      amount: 20,
      date: DateTime.now(),
    ),
    ExpenseModel(
      category: Category.leisure,
      title: 'cinema',
      amount: 10,
      date: DateTime.now(),
    ),
  ];