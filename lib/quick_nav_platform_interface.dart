import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'quick_nav_method_channel.dart';

abstract class QuickNavPlatform extends PlatformInterface {
  /// Constructs a QuickNavPlatform.
  QuickNavPlatform() : super(token: _token);

  static final Object _token = Object();

  static QuickNavPlatform _instance = MethodChannelQuickNav();

  /// The default instance of [QuickNavPlatform] to use.
  ///
  /// Defaults to [MethodChannelQuickNav].
  static QuickNavPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [QuickNavPlatform] when
  /// they register themselves.
  static set instance(QuickNavPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool?> initService({
    required double screenHeight,
    String? chatHeadIcon,
    String? notificationIcon,
    String? notificationTitle,
    int? notificationCircleHexColor,
    String? notificationBody,
  }) {
    throw UnimplementedError('initService() has not been implemented.');
  }

  Future<bool?> startService({
    String? notificationTitle,
  }) {
    throw UnimplementedError('startService() has not been implemented.');
  }

  Future<bool?> stopService() {
    throw UnimplementedError('stopService() has not been implemented.');
  }

  Future<bool?> checkPermission() {
    throw UnimplementedError('checkPermission() has not been implemented.');
  }

  Future<bool?> askPermission() {
    throw UnimplementedError('askPermission() has not been implemented.');
  }

  Future<bool?> clearServiceNotification() {
    throw UnimplementedError(
        'clearServiceNotification() has not been implemented.');
  }
}
