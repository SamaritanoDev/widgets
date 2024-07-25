import 'package:flutter/material.dart';
import 'package:widgets/widgets/my_dropdown/list_data_dropdown.dart';
import 'package:widgets/widgets/my_dropdown/my_selected_dropdown.dart';

class DropdownPage extends StatefulWidget {
  const DropdownPage({super.key});

  @override
  State<DropdownPage> createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
  final _controladores = <String, TextEditingController>{
    /*primer cuestionario*/
    'guardia': TextEditingController(),
  };

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color.onPrimary,
        title: const Text('Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Dropdown"),
            MySelectedDropdown(
              myListSelected: listTurns,
              labelText: "Guardia",
              onChanged: (String? newValue) {
                setState(
                  () {
                    print("Selected value: $newValue");
                    // You can use newValue to update your data or state here.
                    _controladores['guardia']?.text =
                        newValue!; // Update TextEditingController
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
