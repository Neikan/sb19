part of '../screen_home.dart';

class _UiField extends StatelessWidget {
  final TextEditingController controller;

  const _UiField({
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelsHome[keyInput]!,
      ),
    );
  }
}
