part of '../screen_home.dart';

class _UiEnteredText extends StatelessWidget {
  final bool isShowView;

  const _UiEnteredText({
    required this.isShowView,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelsHome[keyOutput]!,
            style: const TextStyle(
              color: Colors.green,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
            child: UiPlatform(),
          ),
        ],
      ),
    );
  }
}
