import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../resources/colors/app_colors.dart';
import '../resources/text/app_typography_theme.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? initialValue;
  final TextEditingController? controller;
  final bool? obscureText;
  final String obscuringCharacter;
  final TextInputType? keyboardType;
  final VoidCallback? onTap;
  final void Function(String)? onChanged;
  final void Function(PointerDownEvent)? onTapOutside;
  final void Function(String)? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final Widget? prefix;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? suffix;
  final int? maxLines;
  final int? maxLength;
  final int? minLines;
  final TextStyle? hintStyle;
  final String counterText;
  final EdgeInsets? padding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final InputBorder? border;
  final TextAlign? textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final BorderRadius borderRadius;
  final Color? fillColor;
  final Color? enabledBorderColor;
  final bool? readOnly;
  final bool? filled;
  final TextStyle? style;
  final ScrollController? scrollController;
  final ScrollPhysics? scrollPhysics;
  final bool? isDense;
  final Widget? hint;

  CustomTextField({
    super.key,
    this.hintText,
    this.labelText,
    this.keyboardType,
    this.obscureText,
    this.initialValue,
    this.onChanged,
    this.obscuringCharacter = '•',
    this.textInputAction,
    this.validator,
    this.prefix,
    this.prefixIcon,
    this.controller,
    this.maxLines = 1,
    this.maxLength,
    this.minLines,
    this.counterText = '',
    this.suffixIcon,
    this.suffix,
    this.hintStyle,
    this.padding,
    this.onTapOutside,
    this.focusedBorder,
    this.enabledBorder,
    this.textAlign,
    this.inputFormatters,
    BorderRadius? borderRadius,
    this.fillColor,
    this.enabledBorderColor,
    this.onTap,
    this.onFieldSubmitted,
    this.readOnly,
    this.style,
    this.scrollController,
    this.scrollPhysics,
    this.filled,
    this.isDense,
    this.errorBorder,
    this.border,
    this.hint,
    this.focusedErrorBorder,
  }) : borderRadius =
           borderRadius ??
           BorderRadius.circular(
             5.0,
           );

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTypographyTheme.of(context);
    return TextFormField(
      obscureText: obscureText ?? false,
      readOnly: readOnly ?? false,
      maxLines: maxLines,
      style:
          style ??
          textTheme.r10.copyWith(
            wordSpacing: 2.0,
            color: AppColors.black.value,
          ),
      scrollController: scrollController,
      scrollPhysics: scrollPhysics,
      obscuringCharacter: obscuringCharacter,
      keyboardType: keyboardType,
      initialValue: initialValue,
      onChanged: onChanged,
      onTap: onTap,
      onTapOutside:
          onTapOutside ??
          (_) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
      onFieldSubmitted: onFieldSubmitted,

      validator: validator,
      inputFormatters: inputFormatters,
      textInputAction: textInputAction ?? TextInputAction.next,
      controller: controller,
      maxLength: maxLength,
      minLines: minLines,

      textAlign: textAlign ?? TextAlign.start,
      contextMenuBuilder: (context, editableTextState) {
        return AdaptiveTextSelectionToolbar(
          anchors: editableTextState.contextMenuAnchors,
          children: editableTextState.contextMenuButtonItems.map((
            ContextMenuButtonItem buttonItem,
          ) {
            return CupertinoButton(
              borderRadius: null,
              // disabledColor: colorScheme.secondary,
              onPressed: buttonItem.onPressed,
              padding: const EdgeInsets.all(10.0),
              pressedOpacity: 0.7,
              child: SizedBox(
                // width: 200.0,
                child: Text(
                  CupertinoTextSelectionToolbarButton.getButtonLabel(
                    context,
                    buttonItem,
                  ),
                  style: textTheme.r14.copyWith(
                    color: AppColors.black.value,
                    wordSpacing: 2.0,
                  ),
                ),
              ),
            );
          }).toList(),
        );
      },
      decoration: InputDecoration(
        filled: filled ?? true,
        isDense: isDense,
        hint: hint,
        counterText: counterText,
        fillColor: fillColor ?? AppColors.white.value,
        hintText: hintText,
        contentPadding:
            padding ??
            const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 15,
            ),
        hintStyle:
            hintStyle ??
            textTheme.m12.copyWith(
              color: AppColors.black.value.withValues(
                alpha: 0.5,
              ),
            ),
        labelText: labelText,
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
        border: border,
        focusedBorder: focusedBorder ?? InputBorder.none,

        focusedErrorBorder: focusedErrorBorder ?? InputBorder.none,
        errorBorder: errorBorder ?? InputBorder.none,
        errorStyle: textTheme.r14.copyWith(),
        prefix: prefix,
        prefixIcon: prefixIcon,
        suffix: suffix,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
