import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {


  final TextEditingController? controller;

  final String hint;

  final String? label;

  final bool obscureText;

  final TextInputType? keyboardType;

  final Widget? prefixIcon;

  final Widget? suffixIcon;

  final String? Function(String?)? validator;



  const CustomTextField({

    super.key,

    this.controller,

    required this.hint,

    this.label,

    this.obscureText = false,

    this.keyboardType,

    this.prefixIcon,

    this.suffixIcon,

    this.validator,

  });



  @override
  Widget build(BuildContext context) {


    return TextFormField(


      controller: controller,


      obscureText: obscureText,


      keyboardType: keyboardType,


      validator: validator,


      decoration: InputDecoration(


        hintText: hint,


        labelText: label,


        prefixIcon: prefixIcon,


        suffixIcon: suffixIcon,


      ),

    );


  }


}