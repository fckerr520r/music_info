part of ui;

class TextWithCurcleFlag extends StatelessWidget {
  const TextWithCurcleFlag(
      {Key? key,
      required this.onTap,
      required this.curcleFlag,
      required this.text})
      : super(key: key);

  final GestureTapCallback onTap;
  final Widget curcleFlag;
  final Widget text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: [
          curcleFlag,
          const SizedBox(width: 22),
          DefaultTextStyle(
            child: text,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
