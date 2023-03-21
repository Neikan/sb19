part of '../screen_home.dart';

class _UiEnteredTextLength extends StatelessWidget {
  final int? length;

  const _UiEnteredTextLength({
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    if (length == null) return const SizedBox();

    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelsHome[keyLength]!,
            style: const TextStyle(
              color: Colors.green,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: Text('$length'),
          ),
        ],
      ),
    );
  }
}
