part of ui;

class InfoScreenWidget extends StatelessWidget {
  const InfoScreenWidget({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      child: child,
    );
  }
}
