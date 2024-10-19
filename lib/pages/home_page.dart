import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePages> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  bool _isExpense = true;

  void _addTransaction() {
    final String title = _titleController.text;
    final double? amount = double.tryParse(_amountController.text);

    if (title.isNotEmpty && amount != null) {
      final newTransaction = Transaction(
        id: DateTime.now().toString(),
        title: title,
        date: DateTime.now(),
        isExpense: _isExpense,
      );
      Provider.of<TransactionProvider>(context, listen: false)
          .addTransaction(newTransaction);

      _titleController.clear();
      _amountController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    final transactionProvider = Provider.of<TransactionProvider>(comtext);

    return Scaffold(
      backgroundColor: const Color(0XFFEECF7FF),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color(0XFFCBECFF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    'assets/ic-plus.png',
                    height: 30,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0XFFCBECFF),
                    ),
                  ),
                  child: const Column(
                    children: [
                      Text(
                        'Personal Finance',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Rp. 1.000.000',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
