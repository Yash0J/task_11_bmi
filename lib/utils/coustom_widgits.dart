import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.controller,
    this.icon,
    this.borderRadius,
    this.hintText,
    this.borderColor,
    this.focusedBorderColor,
    this.fillColor,
    this.cursorColor,
    this.keyboard,
  }) : super(key: key);
  final TextEditingController? controller;
  final Icon? icon;
  final BorderRadius? borderRadius;
  final String? hintText;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final Color? fillColor;
  final Color? cursorColor;
  final TextInputType? keyboard;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboard,
      cursorColor: focusedBorderColor ?? cursorColor,
      decoration: InputDecoration(
        labelStyle: GoogleFonts.openSans(
          color: Colors.black54,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),

        border: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(13),
          borderSide: BorderSide(
            width: 2,
            color: borderColor ?? Colors.black,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(13),
          borderSide: BorderSide(
            width: 2,
            color: borderColor ?? Colors.black,
          ),
        ),
        // disabledBorder: OutlineInputBorder(
        //   borderRadius: borderRadius ?? BorderRadius.circular(13),
        //   borderSide: BorderSide(
        //     width: 2,
        //     color: focusedBorderColor ?? Colors.black,
        //   ),
        // ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(13),
          borderSide: BorderSide(
            width: 2,
            color: focusedBorderColor ?? Colors.black,
          ),
        ),
        isDense: true,
        hintText: hintText ?? "Search",
        hintStyle: GoogleFonts.openSans(
          color: Colors.black54,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: icon ?? const Icon(Icons.search_rounded),
        fillColor: fillColor,
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // static TextFormField textField({
  //   Widget? label,
  //   FloatingLabelBehavior? floatingLabelBehavior,
  //   String? hintText,
  //   TextStyle? hintStyle,
  //   bool? filled = true,
  //   Color? fillColor = const Color(0xFF5A5083),
  //   Color? cursorColor = const Color(0xffe6e1e4),
  //   InputBorder? border,
  //   Widget? prefix,
  //   Icon? prefixIcon,
  //   Widget? suffix,
  //   Icon? suffixIcon,
  //   FloatingLabelAlignment? floatingLabelAlignment =
  //       FloatingLabelAlignment.start,
  //   bool? alignLabelWithHint = true,
  //   bool? obscureText = false,
  //   InputDecoration? decoration,
  //   TextEditingController? controller,
  //   String? Function(String?)? validator,
  //   Widget? error,
  // }) {
  //   ////////////////////////////////////////////
  //   ////default border style
  //   border ??= OutlineInputBorder(
  //     borderSide: BorderSide.none,
  //     borderRadius: BorderRadius.circular(20.0),
  //   );
  //   ////////////////////////////////////////////
  //   ////default label style
  //   // label ??= Coustom.text(
  //   //   text: "EMAIL",
  //   //   fontSize: 14,
  //   //   fontWeight: FontWeight.w400,
  //   // );
  //   ////////////////////////////////////////////
  //   ////default decoration
  //   decoration ??= InputDecoration(
  //     filled: filled,
  //     fillColor: fillColor,
  //     border: border,
  //     prefix: prefix,
  //     hintText: hintText,
  //     prefixIcon: prefixIcon,
  //     hintStyle: hintStyle,
  //     floatingLabelBehavior:
  //         floatingLabelBehavior ?? FloatingLabelBehavior.never,
  //     label: label,
  //     floatingLabelAlignment: floatingLabelAlignment,
  //     alignLabelWithHint: alignLabelWithHint,
  //     error: error,
  //   );
  //   ////////////////////////////////////////////

  //   return TextFormField(
  //     cursorColor: cursorColor,
  //     controller: controller,
  //     validator: validator,
  //     decoration: decoration,
  //   );
  // }