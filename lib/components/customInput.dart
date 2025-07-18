import 'package:flutter/material.dart';
import 'package:nursery/constants/colors.dart';

class InputBox extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  const InputBox({Key? key, required this.controller, required this.label})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.black,
            //fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 3),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: "Enter your $label",
            filled: true,
            fillColor: AppColors.secondaryLight,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.textSecondary),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.secondaryLight),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.secondaryLight, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.secondaryLight),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
          cursorColor: AppColors.textPrimary,
          style: TextStyle(color: AppColors.textPrimary),
        ),
      ],
    );
  }
}
