part of ui;

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    Key? key,
    this.onPressed,
    required this.text,
    this.widgetClildColor,
    required this.preficsIcon,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Widget text;
  final Color? widgetClildColor;
  final Widget preficsIcon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppColors.backgroundColorLight,
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            IconTheme(
              child: preficsIcon,
              data: IconThemeData(color: widgetClildColor ?? Colors.white),
            ),
            const SizedBox(width: 20),
            DefaultTextStyle(
              child: text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: widgetClildColor ?? Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
