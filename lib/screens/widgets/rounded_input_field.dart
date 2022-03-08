import 'package:flutter/material.dart';

class RoundedInputField extends StatefulWidget {
  final String? hintText;
  final IconData icon;
  final ValueChanged<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final bool obscureText;
  final TextInputType textInputType;
  final Function? validator;
  final bool? enable;
  final TextEditingController? textEditingController;
  final bool autofocus;
  final Color? color;

  const RoundedInputField({
    Key? key,
    this.hintText,
    this.color,
    this.icon = Icons.person,
    this.onChanged,
    this.autofocus = false,
    this.onSaved,
    this.obscureText = false,
    this.textInputType = TextInputType.text,
    this.validator,
    this.enable,
    this.textEditingController,
  }) : super(key: key);

  @override
  _RoundedInputFieldState createState() => _RoundedInputFieldState();
}

class _RoundedInputFieldState extends State<RoundedInputField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: widget.color,
      ),
      autofocus: widget.autofocus,
      onChanged: widget.onChanged,
      onSaved: widget.onSaved,
      obscureText: _obscureText,
      keyboardType: widget.textInputType,
      validator: widget.validator as String? Function(String?)?,
      enabled: widget.enable,
      controller: widget.textEditingController,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        labelText: widget.hintText,
        suffixIcon: widget.obscureText
            ? IconButton(
            icon: _obscureText
                ? const Icon(
              Icons.visibility,
              color: Colors.white,
            )
                : const Icon(
              Icons.visibility_off,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            })
            : const SizedBox(),
        hintText: widget.hintText,
      ),
    );
  }
}