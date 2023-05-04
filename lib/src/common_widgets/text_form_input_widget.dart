import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class TextFormInputWidget extends StatelessWidget {
  TextFormInputWidget(
      {Key? key,
      required this.controller,
      required this.hintText,
      this.onTap,
      this.maxLines,
      this.suffixIcon,
      this.validator,
      this.keyboardType,
      this.obscureText,
      this.prefix,
      this.inputFormatters})
      : super(key: key);
  final String? Function(String?)? validator;
  TextEditingController controller;
  Widget? suffixIcon;
  Widget? prefix;
  bool? obscureText;
  TextInputType? keyboardType;
  final String hintText;
  int? maxLines;
  List<TextInputFormatter>? inputFormatters;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // color: Get.theme.primaryColor.withOpacity(.1),
      ),
      child: Card(
        elevation: 4,
        // borderOnForeground: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextFormField(
          onTap: onTap,
          inputFormatters: inputFormatters,
          maxLines: maxLines ?? 1,
          obscureText: obscureText ?? false,
          keyboardType: keyboardType,
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: prefix,
            ),
            suffixIcon: suffixIcon,
            prefixIconConstraints:
                const BoxConstraints(minWidth: 0, minHeight: 0),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 9.0, vertical: 25),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              // borderSide: BorderSide(
              //   // color: Get.theme.primaryColor,
              //   width: .2,
              //   style: BorderStyle.none,
              // ),
              borderSide: BorderSide.none,
            ),
          ),
          style: Get.textTheme.bodySmall,
        ),
      ),
    );
  }
}
