import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../configs/routes/routes.dart';
import '../../configs/show_snack_bar.dart';
import '../../model/model.dart';
import '../../repository/repository.dart';
import '../../view/choose_city/widgets/widgets.dart';

class CreateAccountViewModel with ChangeNotifier {
  UserRepository userRepository;

  CreateAccountViewModel({required this.userRepository});

  final formKey = GlobalKey<FormState>();
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  CityType cityType = CityType.ashgabat;
  String _deviceId = 'Unknown';
  bool isLoading = false;
  bool phoneNumberError = false;

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

  Future<void> createAccount(BuildContext context) async {
    if (!formKey.currentState!.validate()) {
      phoneNumberError = true;
      notifyListeners();
      return;
    }

    phoneNumberError = false;
    isLoading = true;
    notifyListeners();
    try {
      await userRepository.register(
        CreateUsers(
          name: nameController.text.trim(),
          phoneNumber: phoneController.text.trim(),
          city: cityType.title,
          deviceId: _deviceId,
        ),
      );
      // ignore: unawaited_futures
      Navigator.pushNamedAndRemoveUntil(
        context,
        NavigationRouteNames.mainScreen,
        (route) => false,
      );
    } catch (e) {
      showErrorSnackBar(e.toString());
    }
    isLoading = false;
    notifyListeners();
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }
}
