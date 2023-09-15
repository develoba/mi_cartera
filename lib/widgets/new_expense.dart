import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mi_cartera/home.dart';
import 'package:mi_cartera/models/expense.dart';

final formatter = DateFormat.yMMMMd();

class NewExpense extends StatefulWidget {
  const NewExpense({ super.key, required this.onAddExpense });

  final void Function(Expense expense) onAddExpense;

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  Category _selectedCategory = Category.varios;
  DateTime _selectedDate = DateTime.now();

  void _showDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final lastDate = now;
    final pickedDate = await showDatePicker(
      context: context, 
      initialDate: now, 
      firstDate: firstDate, 
      lastDate: lastDate,
    );
    setState(() {
      _selectedDate = pickedDate!;
    });
  }

  void _addExpense() {
    final amountEntered = double.tryParse(_amountController.text);
    final amountIsInvalid = amountEntered == null || amountEntered < 0;
    if(_titleController.text.trim().isEmpty || amountIsInvalid) return;

    widget.onAddExpense(
      Expense(
        title: _titleController.text, 
        amount: amountEntered, 
        category: _selectedCategory, 
        date: _selectedDate
      )
    );
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                label: Text('Nombre del gasto', style: TextStyle(fontWeight: FontWeight.normal)),
              ),
            ),
            const SizedBox(height: 30,),

            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text('Cantidad', style: TextStyle(fontWeight: FontWeight.normal)),
              ),
            ),
            const SizedBox(height: 30,),

            Row(
              children: [
                const Text('Categoría: '),
                const Spacer(),
                DropdownButton(
                  items: Category.values.map(
                    (category) {
                      // Color selectedColor = categoryColors[category.index];
                      return DropdownMenuItem(
                      value: category,
                      child: Row(
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              color: categoryColors[category.index],
                              borderRadius: BorderRadius.circular(100)
                            ),
                          ),
                          const SizedBox(width: 5,),
                          Text(
                            '${category.name[0].toUpperCase()}${category.name.substring(1)}',
                          ),
                        ],
                      ),
                    );
                    }
                  ).toList(),
                  value: _selectedCategory,
                  onChanged: (value) {
                    setState(() {
                      if(value == null) return;
                      _selectedCategory = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 30,),

            Row(
              children: [
                const Text('Fecha: '),
                const Spacer(),
                Row(
                  children: [
                    Text(_selectedDate == null ? formatter.format(DateTime.now()) : formatter.format(_selectedDate!)),
                    IconButton(
                      onPressed: _showDatePicker,
                      icon: const Icon(Icons.calendar_month),
                    )
                  ],
                )
              ],
            ),

            const SizedBox(height: 30,),
            Center(
              child: ElevatedButton(
                onPressed: _addExpense, 
                child: const Text('Añadir gasto'),
                
              ),
            )

          ],
        ),
      ),
    );
  }
}