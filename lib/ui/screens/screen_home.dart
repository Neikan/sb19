// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:app_integrations/consts/keys.dart';
import 'package:app_integrations/consts/translations.dart';
import 'package:app_integrations/services/service_platform.dart';
import 'package:app_integrations/ui/components/ui_app_bar.dart';

import 'package:app_integrations/ui/components/ui_platform/ui_platform_other.dart'
    if (dart.library.html) 'package:app_integrations/ui/components/ui_platform/ui_platform_web.dart'
    if (dart.library.io) 'package:app_integrations/ui/components/ui_platform/ui_platform_android.dart';

part 'components/ui_entered_text.dart';
part 'components/ui_fab.dart';
part 'components/ui_field.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final ServicePlatform _service = getService();
  final TextEditingController _controller = TextEditingController();

  bool _isShowView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UiAppBar(child: Text(labelsHome[keyTitle]!)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _UiField(controller: _controller),
              _UiEnteredText(isShowView: _isShowView),
            ],
          ),
        ),
      ),
      floatingActionButton: _UiFab(onPressed: _setValue),
    );
  }

  void _setValue() async {
    await _service.callMethodChannel(_controller.text);

    setState(() => _isShowView = true);
  }
}
