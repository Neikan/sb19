part of '../screen_home.dart';

class _UiFab extends StatelessWidget {
  final void Function() onPressed;

  const _UiFab({
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      icon: const Icon(Icons.send),
      label: Text(labelsHome[keyButton]!),
    );
  }
}
