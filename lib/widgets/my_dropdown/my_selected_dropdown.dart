import 'package:flutter/material.dart';
import 'package:widgets/utils/inputs_Decorations.dart';

class MySelectedDropdown extends StatelessWidget {
  final List<String> myListSelected;
  final String labelText;
  final Function(String?) onChanged;
  const MySelectedDropdown({
    super.key,
    required this.myListSelected,
    required this.labelText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: DropdownButtonFormField<String>(
        decoration: InputDecorations.reportInputDecoration(
          labelText: labelText,
          context: context,
        ),
        value: myListSelected[0],
        items: myListSelected.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
