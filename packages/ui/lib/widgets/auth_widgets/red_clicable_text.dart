part of ui;

class RedClicableText extends StatelessWidget {
  const RedClicableText({Key? key, required this.text, this.onTap})
      : super(key: key);

  final Widget text;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: DefaultTextStyle(
        child: text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.letterColorRed,
        ),
      ),
      onTap: onTap,
    );
  }
}
