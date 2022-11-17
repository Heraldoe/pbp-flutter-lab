import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/budgetshow.dart';
import 'package:counter_7/form.dart';

Widget gettingbudgets(BudgetModel budget) {
  Widget title = Text(budget.title);
  Widget amount = Text(budget.amount);
  Widget type = Text(budget.type!);
  return ListView(children: [title, amount, type]);
}

class BudgetModel {
  String title = '';
  String amount = '';
  String? type;

  BudgetModel(String title, String amount, String type) {
    this.title = title;
    this.amount = amount;
    this.type = type;
  }}
var budgetlist = [];
