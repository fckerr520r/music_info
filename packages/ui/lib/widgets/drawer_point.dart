part of ui;

class DrawerPoint extends StatelessWidget {
  const DrawerPoint({
    Key? key,
    required this.nameOfPoint,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  final Widget nameOfPoint;
  final GestureTapCallback onTap;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconTheme(
        child: icon,
        data: const IconThemeData(color: Colors.white),
      ),
      title: DefaultTextStyle(
        child: nameOfPoint,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      onTap: onTap,
    );
  }
}
