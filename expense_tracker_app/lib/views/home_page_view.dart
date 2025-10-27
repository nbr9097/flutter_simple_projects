import 'package:expense_tracker_app/data/expenses_data.dart'; // registered expenses
import 'package:expense_tracker_app/models/expense_model.dart';
import 'package:expense_tracker_app/widgets/chart/chart.dart';
import 'package:expense_tracker_app/widgets/new_expenses_widget.dart';
import 'package:expense_tracker_app/widgets/expenses_list_widegt.dart'; //listview builder
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (context) => NewExpense(onAddExpense: _addExpense),
    );
  }

  void _addExpense(ExpenseModel expense) {
    setState(() {
      registeredExpense.add(expense);
    });
  }

  void _removeExpense(ExpenseModel expense) {
    final expenseIndex = registeredExpense.indexOf(expense);
    setState(() {
      registeredExpense.remove(expense);
    });

    //showing message when deleted
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: Text('Expense Deleted'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              registeredExpense.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width =MediaQuery.of(context).size.width;
    //final height =MediaQuery.of(context).size.height;
    Widget mainContent = Center(
      child: Text('No expenses found.Start adding some!'),
    );

    if (registeredExpense.isNotEmpty) {
      mainContent = ExpensesList(
        expenses: registeredExpense,
        onRemoveExpense: _removeExpense,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter ExpenseTracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body:width<600? Column(
        children: [
          Chart(expenses: registeredExpense),
          Expanded(child: mainContent),
        ],
      ):Row(
        children: [
          Expanded(child: Chart(expenses: registeredExpense)),
          Expanded(child: mainContent),
        ],
      )
    );
  }
}
