import 'package:flutter/material.dart';

class SearchInputField extends StatelessWidget {
  const SearchInputField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.inputType = TextInputType.text,
       this.labelText});
  final TextEditingController controller;
  final String hintText;
  final TextInputType inputType;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: GlobalKey(debugLabel: 'kush'),
      controller: controller,
      
      keyboardType: inputType,
      cursorColor:const Color(0xFFDA6317),
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color:  Color(0xFFF9A84D)
          ),
          borderRadius: BorderRadius.all(Radius.circular(15))),
        focusedBorder:const OutlineInputBorder(
        borderSide: BorderSide(
            color:  Color(0xFFF9A84D)
          ),
          borderRadius: BorderRadius.all(Radius.circular(15))),
        enabledBorder:const OutlineInputBorder( borderSide: BorderSide(
            color:  Color(0xFFF9A84D)
          ),borderRadius: BorderRadius.all(Radius.circular(15))) ,
        prefixIcon: const Icon(
          Icons.search,
          color: Color(0xFFDA6317),
        ),
        filled: true,
        fillColor:const Color(0xFFF9A84D) ,
        hintText: hintText,
        hintStyle:  const TextStyle(
          color: Color(0xFFDA6317),
        ),
        labelText: labelText
      ),
    );
  }
}
