import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final IconData? prefixIcons;
  final bool? obscureText;
  final bool? readOnly;
  final VoidCallback? onTap;
  const CustomTextField({
    super.key,
    required this.userPassword,
    this.controller,
    this.hintText,
    this.prefixIcons,
    this.obscureText,
    this.readOnly,
    this.onTap,
  });

  final TextEditingController userPassword;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.userPassword,
      obscureText: widget.obscureText == true ? _passwordVisible : false,
      cursorColor: const Color(0xff540174),
      decoration: InputDecoration(
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff540174)),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff540174)),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xff540174)),
          ),
          prefixIcon: widget.prefixIcons != null
              ? Icon(
                  widget.prefixIcons,
                  color: const Color(0xFF540174),
                )
              : null,
          suffixIcon: widget.obscureText != null
              ? IconButton(
                  icon: Icon(
                    // Based on passwordVisible state choose the icon
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: () {
                    // Update the state i.e. toogle the state of passwordVisible variable
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                )
              : null,
          hintText: widget.hintText,
          hintStyle: const TextStyle(fontSize: 16, color: Colors.black)),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
