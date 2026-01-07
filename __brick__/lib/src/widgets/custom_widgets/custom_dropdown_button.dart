import 'package:flutter/material.dart';

import '../../resources/colors/app_colors.dart';


class CustomDropdownButton<T> extends StatelessWidget {
  final T? value;
  final List<T> items;
  final String Function(T)? itemLabel;
  final Widget Function(T)? itemBuilder;
  final ValueChanged<T?>? onChanged;
  final String? hint;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? iconColor;
  final double? borderRadius;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? contentPadding;
  final Border? border;
  final double? fontSize;
  final FontWeight? fontWeight;
  final IconData? icon;
  final double? iconSize;
  final bool isExpanded;
  final double? menuMaxHeight;
  final Widget? underline;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final Alignment? alignment;

  const CustomDropdownButton({
    super.key,
    required this.items,
    required this.onChanged,
    this.value,
    this.itemLabel,
    this.itemBuilder,
    this.hint,
    this.backgroundColor,
    this.textColor,
    this.iconColor,
    this.borderRadius = 15.0,
    this.elevation = 2.0,
    this.padding,
    this.contentPadding ,
    this.border,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
    this.icon = Icons.arrow_drop_down,
    this.iconSize = 24.0,
    this.isExpanded = true,
    this.menuMaxHeight,
    this.underline,
    this.style,
    this.hintStyle,
    this.alignment,
  });

  String _getItemText(T item) {
    if (itemLabel != null) return itemLabel!(item);
    return item.toString();
  }

  Widget _buildItem(T item) {
    if (itemBuilder != null) return itemBuilder!(item);
    return Text(
      _getItemText(item),
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.black,
        borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
        border:
            border ??
            Border.all(
              color: AppColors.black,
            ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          value: value,
          isExpanded: isExpanded,
          hint: hint != null
              ? Text(
                  hint!,
                  style:
                      hintStyle ??
                      TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: fontSize,
                      ),
                )
              : null,
          // icon: SvgPicture.asset(
          //   AppIcons.arrowDown,
          // ),
          // Icon(
          //   icon,
          //   color: iconColor ?? AppColors.white.value,
          //   size: iconSize,
          // ),
          elevation: elevation?.toInt() ?? 2,
          style:
              style ??
              TextStyle(
                color: textColor ?? Colors.black87,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
          underline: underline,
          menuMaxHeight: menuMaxHeight,
          alignment: alignment ?? AlignmentDirectional.centerStart,
          padding: contentPadding ?? EdgeInsetsGeometry.symmetric(
            horizontal: 10.0,
          ),
          dropdownColor: backgroundColor ?? AppColors.white,
          borderRadius: BorderRadius.circular(
            borderRadius ?? 8.0,
          ),
          onChanged: onChanged,
          items: items.map((T item) {
            return DropdownMenuItem<T>(
              value: item,
              child: _buildItem(item),
            );
          }).toList(),
        ),
      ),
    );
  }
}
