import 'package:expense_tracker_app/models/expense_model.dart';
import 'package:flutter/material.dart';

class ExpenseItemCard extends StatelessWidget {
  const ExpenseItemCard(this.expense, {super.key});
  final ExpenseModel expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20,vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(expense.title,style: Theme.of(context).textTheme.titleLarge,),
            SizedBox(height: 20,),
            Row(children:[
              Text('\$${expense.amount.toStringAsFixed(2)}'),
              Spacer(),
              Row(children:[
                Icon(categoryIcon[expense.category]),
                const SizedBox(width:8,),
                Text(expense.formattedDate),
                ],),
              ],
              ),
          ],
        ),
      ),
    );
  }
}
