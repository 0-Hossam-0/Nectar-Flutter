import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Color(0xfff2f3f2),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        hintText: 'Search Store',
        hintStyle: TextStyle(
          color: Color(0xFF7C7C7C),
        ),
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}