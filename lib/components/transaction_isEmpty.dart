import 'package:flutter/material.dart';

class TransactionIsEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Column(
        children: [
          SizedBox(
            height: constraints.maxHeight * 0.05,
          ),
          Text(
            "Nenhuma Transação Cadastrada!",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: constraints.maxHeight * 0.05,
          ),
          Container(
            height: constraints.maxHeight * 0.7,
            child: Image.asset(
              'assets/images/waiting.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      );
    });
  }
}
