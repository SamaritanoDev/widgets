import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final IconData icon;
  final TextEditingController controller;
  final Function(String) onSubmitted;

  const SearchBar({
    super.key,
    required this.icon,
    required this.controller,
    required this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: 'Buscar',
          border: InputBorder.none,
        ),
        onSubmitted: onSubmitted,
      ),
    );
  }
}
