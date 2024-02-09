import 'quick_nav_platform_interface.dart';

class QuickNav {
  QuickNav._();

  static QuickNav I = QuickNav._();

  Future<String?> getPlatformVersion() {
    return QuickNavPlatform.instance.getPlatformVersion();
  }

  Future<bool?> initService({
    required double screenHeight,
    String? notificationIcon,
    String? chatHeadIcon,
    String? notificationTitle,

    /// For android 13, the notification icon appear inside the circle in notification center
    /// this prop allow you to change the color of this circle
    int? notificationCircleHexColor,
    String? notificationBody,
  }) {
    return QuickNavPlatform.instance.initService(
      screenHeight: screenHeight,
      chatHeadIcon: chatHeadIcon,
      notificationIcon: notificationIcon,
      notificationTitle: notificationTitle,
      notificationCircleHexColor: notificationCircleHexColor,
      notificationBody: notificationBody,
    );
  }

  Future<bool?> startService({
    String? notificationTitle,
  }) {
    return QuickNavPlatform.instance
        .startService(notificationTitle: notificationTitle);
  }

  Future<bool?> stopService() {
    return QuickNavPlatform.instance.stopService();
  }

  Future<bool?> checkPermission() {
    return QuickNavPlatform.instance.checkPermission();
  }

  Future<bool?> askPermission() {
    return QuickNavPlatform.instance.askPermission();
  }

  Future<bool?> clearServiceNotification() {
    return QuickNavPlatform.instance.clearServiceNotification();
  }
}
