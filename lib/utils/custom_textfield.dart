import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

class CustomTextField extends StatefulWidget {
  final String? hint;
  final ValueChanged<String>? onChanged;
  final bool headerLess;
  final TextEditingController? textEditingController;
  final int lines;
  final bool readOnly;
  final bool obscureText;
  final Widget? prefix;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;
  final Widget? suffix;
  final TextInputAction textInputAction;
  final Border? border;
  final Color? backgroundColor;

  final String? prefixText;

  const CustomTextField({
    Key? key,
    this.hint,
    this.onChanged,
    this.headerLess = false,
    this.textEditingController,
    this.lines = 1,
    this.readOnly = false,
    this.obscureText = false,
    this.prefix,
    this.keyboardType,
    this.inputFormatters,
    this.focusNode,
    this.suffix,
    this.textInputAction = TextInputAction.done,
    this.border,
    this.backgroundColor,
    this.prefixText,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  void initState() {
    _node = widget.focusNode ?? FocusNode();
    super.initState();
  }

  FocusNode? _node;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(_node);
      },
      child: Container(
        height: 57,
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 2,
        ),
        decoration: BoxDecoration(
          color: AppColor.bg,
          border: widget.border ??
              Border.all(
                color: const Color(0XFFBDBDBD),
                width: 1,
              ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            widget.prefix ?? const SizedBox(width: 15),
            Expanded(
              child: TextFormField(
                focusNode: _node,
                cursorColor: AppColor.primary1,
                readOnly: widget.readOnly,
                onChanged: widget.onChanged,
                textInputAction: widget.textInputAction,
                obscureText: widget.obscureText,
                keyboardType: widget.keyboardType,
                controller: widget.textEditingController,
                inputFormatters: widget.inputFormatters,
                maxLines: widget.obscureText ? 1 : (widget.lines),
                minLines: widget.obscureText ? 1 : (widget.lines),
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  prefixText: widget.prefixText,
                  contentPadding: const EdgeInsets.all(20.0),
                  prefixStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  border: InputBorder.none,
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                  label: Text(
                    widget.hint ?? '',
                  ),
                  hintStyle: TextStyle(
                    color: AppColor.primary1,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    fontFamily: 'inter',
                  ),
                ),
              ),
            ),
            widget.suffix ?? const SizedBox()
          ],
        ),
      ),
    );
  }
}
