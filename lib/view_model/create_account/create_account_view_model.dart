import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../view/choose_city/widgets/widgets.dart';

class CreateAccountViewModel with ChangeNotifier {
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

  CityType cityType = CityType.ashgabat;
  String _deviceId = 'Unknown';

  void setCity(CityType type) {
    cityType = type;
    notifyListeners();
  }

  Future<void> initPlatformState() async {
    try {
      if (Platform.isAndroid) {
        final AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
        _deviceId = androidInfo.id;
      } else if (Platform.isIOS) {
        final IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
        _deviceId = iosInfo.identifierForVendor ?? '';
      }
    } on PlatformException {
      //ignore
    }
  }
}
