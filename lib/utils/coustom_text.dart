import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///[widgit]
class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.text,
    this.color = Colors.black87,
    this.size = 22,
    this.weight,
  });

  final String text;
  final Color? color;
  final double? size;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        color: color ?? Colors.black87,
        fontSize: size,
        fontWeight: weight ?? FontWeight.w600,
      ),
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////
///[styling]

class TitleStyle {
  const TitleStyle({
    this.color,
    this.size,
    this.weight,
  });

  final Color? color;
  final double? size;
  final FontWeight? weight;

  TextStyle get textStyle {
    return GoogleFonts.openSans(
      color: color ?? Colors.black87,
      fontSize: size,
      fontWeight: weight ?? FontWeight.w600,
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
///[widgit]
class BodyText extends StatelessWidget {
  const BodyText({
    super.key,
    required this.text,
    this.color,
    this.size,
    this.weight,
  });

  final String text;
  final Color? color;
  final double? size;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        color: color ?? Colors.black87,
        fontSize: size ?? 16,
        fontWeight: weight ?? FontWeight.w400,
      ),
    );
  }
}
//////////////////////////////////////////////////////////////////////////////////////////////////
///[styling]

class BodyStyle {
  const BodyStyle({
    this.color,
    this.size,
    this.weight,
  });

  final Color? color;
  final double? size;
  final FontWeight? weight;

  TextStyle get textStyle {
    return GoogleFonts.openSans(
      color: color ?? Colors.black87,
      fontSize: size ?? 16,
      fontWeight: weight ?? FontWeight.w400,
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
///[widgit]


//////////////////////////////////////////////////////////////////////////////////////////////////
///[styling]


