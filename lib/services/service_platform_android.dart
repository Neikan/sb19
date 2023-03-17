// Flutter imports:
import 'package:flutter/services.dart';

// Project imports:
import 'package:app_integrations/consts/channels.dart';
import 'package:app_integrations/consts/keys.dart';
import 'package:app_integrations/services/service_platform.dart';

class ServicePlatformImp implements ServicePlatform {
  static final method = MethodChannel(platformAndroid[keyChannel]!);

  @override
  Future<void> callMethodChannel(String text) async {
    // Можно добавить перехват ошибки
    await method.invokeMethod(platformAndroid[keyMethodId]!, [text]);
  }
}
