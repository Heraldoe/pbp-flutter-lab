import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/budgetshow.dart';
import 'package:counter_7/budgetmodel.dart';

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});
  @override
  State<MyFormPage> createState() => _MyFormPageState();
}
class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String title = "";
  String amount = "";
  String what = "Expense";
  List<String> budgettype = ['Income', 'Expense', ];
  String budgettypef = 'Expense';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Adding clickable menu
            ListTile(
              title: const Text('counter_7'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Counter')),
                );
              },
            ),
            ListTile(
              title: const Text('Add Budget Info'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Budget Data'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyShowPage(title: 'Show data',)),
                );
              },
            ),
          ],
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  // Using padding of 8 pixels
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Example: Food",
                      labelText: "Title",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Added behavior when name is typed
                    onChanged: (String? value) {
                      setState(() {
                        title = value!;
                      });
                    },
                    // Added behavior when data is saved
                    onSaved: (String? value) {
                      setState(() {
                        title = value!;
                      });
                    },
                    // Validator as form validation
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Title cannot be empty!';
                      }
                      return null;
                    },
                  ),
                ),
                TextFormField(
                    decoration: InputDecoration(
                      hintText: "Example: 20.0",
                      labelText: "Amount",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    // Added behavior when name is typed
                    onChanged: (String? value) {
                      setState(() {
                        amount = value!;
                      });
                    },
                    // Added behavior when data is saved
                    onSaved: (String? value) {
                      setState(() {
                        amount = value!;
                      });
                    },
                    // Validator as form validation
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Cannot be empty!';
                      }
                      return null;
                    },
                  ),
                ListTile(
                  title: const Text(
                    'Choose type',
                  ),
                  trailing: DropdownButton(
                    value: budgettypef,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: budgettype.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        budgettypef = newValue!;
                      });
                    },
                  ),
                ),
                TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              budgetlist.add(BudgetModel(title, amount, budgettypef));
                            };
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => const MyShowPage(title: 'Show data',)));
                          },
                          child: const Text(
                            'Save',
                            style: TextStyle(color: Colors.white),
                          )),
              ],
            ),
          ),
        ),
      ),

    );
  }
}