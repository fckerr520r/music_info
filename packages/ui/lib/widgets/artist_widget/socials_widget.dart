part of ui;

class SocialsWidget extends StatelessWidget {
  const SocialsWidget({
    Key? key,
    required this.socialIcon,
    this.onTap,
  }) : super(key: key);

  final Widget socialIcon;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          IconTheme(
            child: socialIcon,
            data: const IconThemeData(
              size: 35,
              color: AppColors.letterMainColor,
            ),
          ),
        ],
      ),
    );
  }
}
