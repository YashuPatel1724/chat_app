import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Padding textForm
    ({required IconData prefixIcon,
  required String hint,
  required TextEditingController controller, required FormFieldValidator<
      String>? validator ,IconData? sufixIcon}) {
  return Padding(
    padding:  EdgeInsets.only(left: 10.0, right: 10, bottom: 10,top: 15),
    child: Container(
      child: TextFormField(
        validator: validator,
        style: const TextStyle(color: Colors.white),
        controller: controller,
        decoration: InputDecoration(
          fillColor: Color(0xff232732),
          filled: true,
          // labelText: 'Enter Email',
          // label: Text('Enter email',style: TextStyle(color: Colors.white70),),
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.white,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(sufixIcon,color: Colors.white,),
          ),
          hintText: hint,
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  color: Colors.white, width: 1.5)),
          hintStyle: const TextStyle(color: Colors.white70),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                  color: Color(0xff232732), width: 1.5)),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2.5),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ),
  );
}