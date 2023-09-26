import 'package:flutter/material.dart';
import 'package:food_delivery/cores/theme/palette.dart';

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
    late final theme = Theme.of(context).extension<Palette>()!;
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: TextFormField(
        key: GlobalKey(debugLabel: 'kush'),
        controller: controller,
        style: TextStyle(
          color: theme.mainTextColor,
        ),
        keyboardType: inputType,
        cursorColor:theme.iconColor,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color:  theme.borderColor
            ),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
          focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color:  theme.borderColor
            ),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
          enabledBorder: OutlineInputBorder( borderSide: BorderSide(
              color:  theme.borderColor
            ),borderRadius: const BorderRadius.all(Radius.circular(15))) ,
          prefixIcon:  Icon(
            Icons.search,
            color: theme.iconColor,
          ),
          filled: true,
          fillColor: theme.textfieldColor,
          hintText: hintText,
          hintStyle:   TextStyle(
            color: theme.hintColor,
          ),
          labelText: labelText
        ),
      ),
    );
  }
}
