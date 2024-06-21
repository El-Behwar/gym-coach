import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gym_coach/core/utils/app_colors.dart';
import '../utils/app_font.dart';

class CustomFormFiled extends StatefulWidget {
  final String? labelText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String?)? onFieldSubmit;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputAction? textInputAction;
  final Color? backgroundColor;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? disabledBorder;
  final double? borderRound;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final int? minLines;
  final int? maxLines;
  final String? initialValue;
  final bool? enabled;
  final Function(String?)? onChanged;
  final bool? expands;
  final double? hintFontSize;
  final FontWeight? hintFontWeight;
  final bool isDatePicker;
  final bool isTimePicker;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final void Function(String)? onDateChanged;
  final Color? iconColor;
  final String? label;
  final bool emptyErrorMessage;
  final bool isSearchField; // will show cancel prefix icon to cancel search
  final Function? onCanceled; // callback for cancel (if its search field)
  final TimeOfDay? initialTime; // callback for cancel (if its search field)
  final Color? fontColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? hintColor;
  final bool? readOnly;
  final Color? hoverColor;

  final Color? cursorColor;

  final String? hint;

  const CustomFormFiled({
    Key? key,
    this.labelText,
    this.hoverColor,
    this.fontColor,
    this.readOnly,
    this.hintColor,
    this.controller,
    this.validator,
    this.disabledBorder,
    this.onFieldSubmit,
    this.keyboardType,
    this.focusNode,
    this.fontWeight,
    this.obscureText,
    this.suffixIcon,
    this.prefixIcon,
    this.fontSize,
    this.backgroundColor,
    this.textInputAction,
    this.enabledBorder,
    this.focusedBorder,
    this.borderRound,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.minLines,
    this.maxLines = 1,
    this.initialValue,
    this.enabled,
    this.onChanged,
    this.expands,
    this.hintFontSize,
    this.hintFontWeight,
    this.isDatePicker = false,
    this.isTimePicker = false,
    this.firstDate,
    this.lastDate,
    this.onDateChanged,
    this.iconColor,
    this.isSearchField = false,
    this.onCanceled,
    this.label,
    this.emptyErrorMessage = false,
    this.initialTime,
    this.cursorColor,
    this.hint,
  }) : super(key: key);

  @override
  State<CustomFormFiled> createState() => _CustomFormFiledState();
}

class _CustomFormFiledState extends State<CustomFormFiled> {
  String text = '';

  bool passwordShowed = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Theme(
        data: Get.theme.copyWith(
            primaryColor: widget.iconColor ?? Get.theme.primaryColor,
            colorScheme: Get.theme.colorScheme.copyWith(
              primary: widget.iconColor ?? Get.theme.primaryColor,
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.label != null)
              Text(
                widget.label!,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: AppColors.black,
                    ),
              ),
            if (widget.label != null) 8.verticalSpace,
            Directionality(
              textDirection: TextDirection.rtl, ///
              child: TextFormField(
                style: TextStyle(
                  color: widget.fontColor ?? AppColors.black,
                  fontSize: FontSize.s16.sp,
                  fontFamily: 'ElMessiri',
                ),
                readOnly: widget.readOnly ?? false,
                enabled: widget.enabled,
                //autovalidateMode: AutovalidateMode.onUserInteraction,
                initialValue: widget.initialValue,
                // style: MyStyl.getTextTheme(isLightTheme: Get.isDarkMode).bodyText2!.copyWith(
                //   fontSize: widget.fontSize ?? 14.sp,
                //   fontWeight: widget.fontWeight,
                //   color: widget.fontColor ?? Colors.black.withOpacity(0.8),
                // ),

                onSaved: widget.onFieldSubmit,
                onChanged: (value) {
                  setState(() {
                    text = value;
                  });
                  widget.onChanged?.call(value);
                },
                minLines: widget.minLines,
                maxLines: widget.obscureText == true ? 1 : widget.maxLines,
                expands: widget.expands ?? false,
                cursorColor: widget.cursorColor ?? AppColors.gray5,
                decoration: InputDecoration(
                  hoverColor: widget.hoverColor ?? AppColors.primaryColor,
                  label:widget.labelText!= null? Text(
                    widget.labelText!/*??''*/,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.gray4,
                    ),
                  ):null,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.h),
                    borderSide: BorderSide(color: AppColors.borderGrey),
                    gapPadding: 2,
                  ),
                  focusedBorder: OutlineInputBorder(
                    gapPadding: 2,
                      borderRadius: BorderRadius.circular(10.h),
                      borderSide: BorderSide(
                          color: widget.focusedBorderColor ??
                              AppColors.primaryColor)),
                  suffixIcon: widget.obscureText == true
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              passwordShowed = !passwordShowed;
                            });
                          },
                          child: Icon(
                            !passwordShowed
                                ? Icons.visibility_off_outlined /*remove_red_eye*/
                                : Icons.visibility_outlined,
                            color: passwordShowed
                                ? null
                                : Colors.black.withOpacity(0.6),
                          ))
                      : widget.isSearchField
                          ? text.isEmpty
                              ? const SizedBox()
                              : GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      widget.controller?.clear();
                                      text = '';
                                      widget.onCanceled?.call();
                                      FocusScope.of(context).unfocus();
                                    });
                                  },
                                  child: const Icon(
                                    Icons.close,
                                    color: Colors.redAccent,
                                  ))
                          : widget.suffixIcon,
                  prefixIcon: widget.prefixIcon,

                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0.h, horizontal: 10.w),
                  filled: true,
                  fillColor: widget.backgroundColor ?? AppColors.white,
                  hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: widget.hintColor ?? AppColors.gray4,
                    //fontSize: widget.hintFontSize ?? FontSize.s15.sp,
                    //fontWeight: widget.hintFontWeight ?? FontWeightManger.regular,
                  ),
                  hintText: widget.hint,

                  errorStyle: !widget.emptyErrorMessage
                      ? /*null*/Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.redAccent,
                    fontSize: FontSize.s12,
                    height: 0.9,
                  )
                      : const TextStyle(
                          height: -10,
                          fontSize: 0,
                        ),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.redAccent, width: 1.0),
                      borderRadius:
                          BorderRadius.circular(widget.borderRound ?? 8.r)),
                  // widget.disabledBorder ?? OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0), width: 0.0), borderRadius: BorderRadius.circular(widget.borderRound ?? 8)),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.redAccent, width: 1.0),
                      borderRadius:
                          BorderRadius.circular(widget.borderRound ?? 8.r)),
                  //   enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: widget.enabledBorder == null ? const Color(0xff001D6E29).withOpacity(0.16) :  Colors.grey[300]!, width: 0.0), borderRadius: BorderRadius.circular(widget.borderRound ?? 8)),
                  //   focusedBorder: OutlineInputBorder(
                  //      borderSide: BorderSide(color: widget.focusedBorderColor ?? Theme.of(context).primaryColor, width: 1.0),
                  //      borderRadius: BorderRadius.circular(widget.borderRound ?? 10),
                  //    ),
                ),
                validator: widget.validator,
                controller: widget.controller,
                onFieldSubmitted: widget.onFieldSubmit,
                focusNode: widget.focusNode,
                keyboardType: widget.keyboardType,
                obscureText: widget.obscureText == true && !passwordShowed,
                textInputAction: widget.textInputAction ?? TextInputAction.next,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
