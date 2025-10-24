import 'package:expense_tracker_app/models/expense_model.dart';
import 'package:expense_tracker_app/widgets/expense_item_card_widget.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  final List<ExpenseModel> expenses;
  final void Function(ExpenseModel expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: ValueKey(expenses[index]),
          background: Container(
            color: Theme.of(context).colorScheme.error,
            margin: Theme.of(context).cardTheme.margin,
          ),
          onDismissed: (direction) => onRemoveExpense(expenses[index]),
          child: ExpenseItemCard(expenses[index]),
        );
      },
    );
  }
}
