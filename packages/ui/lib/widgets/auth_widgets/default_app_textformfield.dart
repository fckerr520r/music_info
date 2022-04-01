part of ui;

class DefaultAppTextFormField extends StatelessWidget {
  const DefaultAppTextFormField({
    Key? key,
    required this.textEditingController,
    required this.labelText,
    this.prefixIcon,
    this.validator,
    this.keyboardType,
    this.autocorrect = true,
    this.obscureText = false,
    this.suffixIcon,
    this.hintText,
    this.onEditingComplete,
    this.textInputAction,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final String labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final bool autocorrect;
  final bool obscureText;
  final VoidCallback? onEditingComplete;
  final TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      autocorrect: autocorrect,
      obscureText: obscureText,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
      cursorColor: AppColors.letterColorRed,
      cursorWidth: 1.5,
      validator: validator,
      controller: textEditingController,
      onEditingComplete: onEditingComplete,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        labelStyle: const TextStyle(
          fontSize: 16,
          color: Colors.grey,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.letterMainColor.withOpacity(0.3),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.letterMainColor.withOpacity(0.8),
          ),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
